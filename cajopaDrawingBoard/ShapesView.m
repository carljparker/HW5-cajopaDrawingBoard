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
    
    [[NSColor blackColor] setStroke];
    [[NSColor orangeColor] setFill];
    
    
    float drawingWidth = self.bounds.size.width;
    float drawingHeight = self.bounds.size.height;
    
    float shapeDimension = drawingWidth / 4;
    float shapeSeparation = shapeDimension / 4;
    
    NSBezierPath * myDrawingPath = [NSBezierPath bezierPath];
    
   // Begin Square
    
    [myDrawingPath moveToPoint:NSMakePoint(shapeSeparation, shapeSeparation)];
    
    [myDrawingPath lineToPoint:NSMakePoint(shapeSeparation, shapeSeparation + shapeDimension)];
    [myDrawingPath lineToPoint:NSMakePoint(shapeSeparation + shapeDimension, shapeSeparation + shapeDimension)];
    [myDrawingPath lineToPoint:NSMakePoint(shapeSeparation + shapeDimension, shapeSeparation)];
    [myDrawingPath closePath];
    
    [myDrawingPath stroke];
    [myDrawingPath fill];
    
    // Begin Triangle
    
    [myDrawingPath moveToPoint:NSMakePoint( (shapeSeparation * 2 ) + shapeDimension, shapeSeparation)];
    
    [myDrawingPath lineToPoint:NSMakePoint( (shapeSeparation * 2 ) + (shapeDimension * 1.5), shapeSeparation + shapeDimension)];
    [myDrawingPath lineToPoint:NSMakePoint( (shapeSeparation * 2 ) + (shapeDimension * 2), shapeSeparation)];
    [myDrawingPath closePath];

    [myDrawingPath stroke];
    [myDrawingPath fill];
   
    // Begin Circle
    
    [myDrawingPath moveToPoint:NSMakePoint( (shapeSeparation * 3 ) + ( shapeDimension * 2.5 ), shapeSeparation + ( shapeDimension / 2 ))];
    
    [myDrawingPath appendBezierPathWithArcWithCenter:myDrawingPath.currentPoint radius:( shapeDimension / 2 ) startAngle:0 endAngle:360];
    
    [myDrawingPath stroke];
    [myDrawingPath fill];    
    
}

@end
