//
//  LineGraphView.m
//  cajopaDrawingBoard
//
//  Created by Parker, Carl (HBO) on 2/16/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//

#import "LineGraphView.h"

@implementation LineGraphView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
    
    [[NSColor orangeColor] set];
    [NSBezierPath fillRect:dirtyRect];
    
    NSBezierPath * circlePath = [NSBezierPath bezierPath];
 
//    NSPoint startPoint = NSMakePoint(100, 100);
//    NSPoint endPoint = NSMakePoint(200, 200);
//    [circlePath moveToPoint:startPoint];
//    [circlePath appendBezierPathWithArcFromPoint:startPoint toPoint:endPoint radius:20];
//
//    [circlePath appendBezierPathWithArcFromPoint:endPoint toPoint:startPoint radius:300];    

    [circlePath moveToPoint:NSMakePoint(0.0, 0.0)];
    
    [circlePath lineToPoint:NSMakePoint(100.0, 100.0)];
    
    [circlePath curveToPoint:NSMakePoint(180.0, 210.0)
     
          controlPoint1:NSMakePoint(60.0, 20.0)
     
          controlPoint2:NSMakePoint(280.0, 100.0)];

    [circlePath closePath];
    
    [[NSColor blueColor] set];
    
    [circlePath stroke];
    

}

@end
