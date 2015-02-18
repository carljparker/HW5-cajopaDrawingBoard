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
    
    NSLog(@"--- Shapes View ---");
    NSLog(@"Frame: Width: %f", self.frame.size.width);
    NSLog(@"Frame: Height: %f", self.frame.size.height);
    
    NSLog(@"Bounds: Width: %f", self.bounds.size.width);
    NSLog(@"Bounds: Height: %f", self.bounds.size.height);

    // Drawing code here.
    [[NSColor yellowColor] set];
    [NSBezierPath fillRect:dirtyRect];
    
}

@end
