#include <Wire.h>
#include <WiFlyHQ.h>
#include <SoftwareSerial.h>
//#include <avr/pgmspace.h>
#include <avr/wdt.h>

void softReset();
void terminal();

//Wifly Comm. Declarations
SoftwareSerial wifiSerial(2,3);
WiFly wifly; 
const char site[] = "grideye.no-ip.biz";
const char ssid[] = "HydraStation";
const char pass[] = "wehavetogoback";

//GridEYE Data Declarations
byte pixelTempL;
byte pixelTempH;
char addr = 0x68;
float celsius;
float aveTemp;

int irqPin = 2;
int pwmPin = 3;
int mode = 0;
char rec;
char err;

int resCount = 0;
unsigned long time;
const long maxtime = 5000;
uint32_t baud = 9600;
uint32_t fast = 19200;

void setup() {
  // put your setup code here, to run once:
  Wire.begin();
  Serial.begin(115200);
  while(!Serial) {
    ;
  }
  
  pinMode(irqPin, INPUT);
  pinMode(pwmPin, OUTPUT);
  
  wifiSerial.begin(baud);
  if (!wifly.begin(&wifiSerial, &Serial)) {
      Serial.println("Failed to start wifly. Trying other baud rate...");
      
      wifiSerial.begin(fast);
      
      if (!wifly.begin(&wifiSerial, &Serial)) {
        Serial.println("Failed to start wifly");
        terminal();
      }
     // terminal();
  }
  
  wifly.setBaud(fast);
  wifiSerial.begin(fast);
  
  Serial.println("Serial initialized");
 
  do{
    wifly.setSSID(ssid);
    wifly.setPassphrase(pass);
    wifly.enableDHCP();
    wifly.join();
  } while(!wifly.isAssociated());
  
  Serial.println("Associated");
  
  wiflyConnect();
  
   //Watchdog
  wdt_enable(WDTO_8S); 
  
  time = millis();
}

void wiflyConnect()
{  
  if (wifly.isConnected()) {
        Serial.println("Old connection active. Closing");
	wifly.close();
  }
  
  if (wifly.open(site, 80)) {
      Serial.print("Connected to ");
      Serial.println(site);
  } else {
      Serial.println("Failed to connect");
  }
}

void loop() {
  
  if(mode == 0){
       
      pixelTempL = 0x80;
      aveTemp = 0;
      String json = "";
      json = json + "{\"sensorValues\":[";
      
      wifly.print("GET /grideye/wiflyservice.php?num=" + json); //Begin request
      //Serial.print("GET /grideye/wiflyservice.php?num=" + json);
      
      for(int pixel = 0; pixel < 64; pixel++){
        wdt_reset();
        
        //Grab pixel temp
        Wire.beginTransmission(addr);
        Wire.write(pixelTempL);
        Wire.endTransmission();
        Wire.requestFrom(addr, 2);
        byte lowerLevel = Wire.read();
        byte upperLevel = Wire.read();
    
        //Convert temperature
        int temperature = ((upperLevel << 8) | lowerLevel);
        if (temperature > 2047){
          temperature = temperature - 4096;
        }
        
        //Convert to Celsius temp with resolution of .25 C
        celsius = temperature * 0.25;
        
        wifly.print("\"");
        wifly.print(celsius);
        wifly.print("\","); //Add pixel temp to request
        //Serial.print("\"");
        //Serial.print(celsius);
        //Serial.print("\","); //Add pixel temp to request
        
        switch(pixel){
        case 27:
        case 28:
        case 35:
        case 36:
          aveTemp += celsius;
          break;
        default:
          break;
        }
        
        pixelTempL = pixelTempL + 2;
      }
      //Serial.println("loop"); 
      //Obtin thermistor value
      Wire.beginTransmission(addr);
      Wire.write(0x0E);
      Wire.endTransmission();
      Wire.requestFrom(addr, 2);
      byte upperLevelTherm = Wire.read();
      byte lowerLevelTherm = Wire.read();
    
      int temperatureTherm = ((lowerLevelTherm << 8) | upperLevelTherm);
      //Convert to Celsius with resolution of .0625 C
      float celsiusTherm = temperatureTherm * 0.0625;
      
      wifly.print("\"");
      //Serial.print("\"");
      wifly.print(celsiusTherm);
      //Serial.print(celsiusTherm);
      //Serial.println("\"]} HTTP/1.0");
      wifly.println("\"]} HTTP/1.0"); //Add thermistor value to request and complete it
      
      wifly.println();
      Serial.println();
      Serial.println("sent");
      wifly.flush();
      Serial.flush();
      
      aveTemp *= 0.25;
      
     delay(25);
     mode = 1;
     rec = 'Z';
//     time = millis();

    if(!wifly.isConnected()){
      softReset();
    }
  }
   
  if(mode == 1){ 
//    if(!wifly.isConnected()){
//      softReset();
//    }
//    delay(5);
         
      if (wifly.available() > 0) {
        wdt_reset();
        
  	char ch = wifly.read();
  	Serial.write(ch);
  	if (ch == '\n') {
  	    /* add a carriage return */ 
  	    Serial.write('\r');
  	}
      
         if(ch == rec) {
           //Serial.println("loop");
           rec = 'Z';
           mode = 0;
           time = millis();
         }
         if((ch == '\"') && (ch != rec)) {
           rec = ch;
         }
         
       if(ch == '*')
       {
         err = ch;
       }
       
       if((err == '*') && (ch == 'C')){
         //wiflyConnect();
         softReset();
       }

      }

    if (Serial.available() > 0) {
	wifly.write(Serial.read());
    }
  }
    
  resCount++;
  if(resCount < 70){
    
  }
}

/* Connect the WiFly serial to the serial monitor. */
void terminal()
{  
// This code lets us monitor the output of the WiFly and communicate with it using the
// serial monitor. It is only needed for debugging.

    while (1) {      
	if (wifly.available() > 0) {
	    Serial.write(wifly.read());
	}


	if (Serial.available() > 0) {
	    wifly.write(Serial.read());
	}
    }
}

void softReset(){
  asm volatile ("  jmp 0");
}
