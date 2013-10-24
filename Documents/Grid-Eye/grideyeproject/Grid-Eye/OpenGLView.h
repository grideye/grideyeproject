//
//  OpenGLView.h
//  Grid-Eye
//
//  Created by administrator on 9/30/13.
//  Copyright (c) 2013 administrator. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <OpenGLES/ES2/gl.h>
#import <OpenGLES/ES2/glext.h>

@interface OpenGLView : UIView {
    CAEAGLLayer* _eagLayer;
    EAGLContext* _context;
    GLuint _colorRenderBuffer;
}

- (void)setupContext;
- (void)setupLayer;
- (void)setupRenderBuffer;
- (void)setupFrameBuffer;
- (void)render:(float)value;

- (id)initWithFrame:(CGRect)frame color:(float)value;

@end
