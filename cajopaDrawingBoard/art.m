//
//  art.m
//  cajopaDrawingBoard
//
//  Created by Parker, Carl (HBO) on 2/18/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//

#import "art.h"

@implementation art


- (CGPoint)drawingPoint:(NSArray *)drawSpec pIdx:(NSUInteger)pIdx width:(float)width height:(float)height
{

    NSUInteger xCoord = (((NSNumber *)drawSpec[pIdx][0]).floatValue) * width;

    NSUInteger yCoord = (((NSNumber *)drawSpec[pIdx][1]).floatValue) * height;
    
    return NSMakePoint(xCoord, yCoord);

}


- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];

    NSLog(@"--- Art View ---");
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
    
    NSBezierPath * myDrawingPath = [NSBezierPath bezierPath];
    
    CGPoint drawingPoint;
    
    int idx;
    
    NSArray * letterC = @[   @[@0.40, @0.40],  // starting point, we "moveTo" here
                             @[@0.40, @0.90],
                             @[@0.60, @0.90],
                             @[@0.60, @0.85],
                             @[@0.45, @0.85],
                             @[@0.45, @0.45],
                             @[@0.60, @0.45],
                             @[@0.60, @0.40],
                             @[@0.40, @0.40]
                        ];
    
    for ( idx=0; idx < letterC.count; idx++ ) {
        drawingPoint = [self drawingPoint:letterC pIdx:idx width:drawingWidth height:drawingHeight];
        if ( idx == 0 ) {
            [myDrawingPath moveToPoint:drawingPoint];
        }
        else {
            [myDrawingPath lineToPoint:drawingPoint];
        }
    }
    
    [myDrawingPath stroke];
    [myDrawingPath fill];
    
    
//    NSBezierPath * myArcPath = [NSBezierPath bezierPath];
//    
//    NSPoint startPoint = NSMakePoint(0, 100);
//    NSPoint endPoint = NSMakePoint(0, 200);
//    
//    [myArcPath moveToPoint:NSMakePoint(60, 120)];
//    
//    [myArcPath appendBezierPathWithArcFromPoint:startPoint toPoint:endPoint radius:30];
//    
//    //    [myArcPath appendBezierPathWithArcFromPoint:endPoint toPoint:startPoint radius:300];
//    
//    [[NSColor blackColor] setStroke];
//    
//    [myArcPath stroke];
//    
//    
//    NSBezierPath * circlePath = [NSBezierPath bezierPath];
//    
//    [circlePath moveToPoint:NSMakePoint(0.0, 0.0)];
//    
//    [circlePath lineToPoint:NSMakePoint(100.0, 100.0)];
//    
//    [circlePath curveToPoint:NSMakePoint(180.0, 210.0)
//     
//               controlPoint1:NSMakePoint(60.0, 20.0)
//     
//               controlPoint2:NSMakePoint(280.0, 100.0)];
//    
//    [circlePath closePath];
//    
//    [[NSColor blueColor] set];
//    
//    [circlePath stroke];
//    
//    
//    NSBezierPath*   arcPath1 = [NSBezierPath bezierPath];
//    
//    NSBezierPath*   arcPath2 = [NSBezierPath bezierPath];
//    
//    
//    
//    [[NSColor blackColor] setStroke];
//    
//    
//    
//    // Create the first arc
//    
//    [arcPath1 moveToPoint:NSMakePoint(30,30)];
//    
//    [arcPath1 appendBezierPathWithArcFromPoint:NSMakePoint(0,30)  toPoint:NSMakePoint(0,60) radius:30];
//    
//    [arcPath1 stroke];
//    
//    
//    
//    // Create the second arc.
//    
//    [arcPath2 moveToPoint:NSMakePoint(30,30)];
//    
//    [arcPath2 appendBezierPathWithArcFromPoint:NSMakePoint(30,40)  toPoint:NSMakePoint(70,30) radius:20];
//    
//    [arcPath2 stroke];
    
}

@end
