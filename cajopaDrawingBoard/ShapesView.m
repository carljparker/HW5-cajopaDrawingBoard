//
//  ShapesView.m
//  cajopaDrawingBoard
//
//  Created by Parker, Carl (HBO) on 2/17/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//

#import "ShapesView.h"

@implementation ShapesView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
    [[NSColor yellowColor] set];
    [NSBezierPath fillRect:dirtyRect];

}

@end
