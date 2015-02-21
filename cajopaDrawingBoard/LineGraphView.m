//
//  LineGraphView.m
//  cajopaDrawingBoard
//
//  Created by Parker, Carl (HBO) on 2/16/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//

#import "LineGraphView.h"
#import "LineGraphVC.h"


@interface LineGraphView ()

@property (readwrite) NSArray * peaks;

@end


@implementation LineGraphView


- (void)drawRect:(NSRect)dirtyRect {
    
    [super drawRect:dirtyRect];
    
    NSLog(@"--- Line Graph View ---");
    NSLog(@"Frame: Width: %f", self.frame.size.width);
    NSLog(@"Frame: Height: %f", self.frame.size.height);
    
    NSLog(@"Bounds: Width: %f", self.bounds.size.width);
    NSLog(@"Bounds: Height: %f", self.bounds.size.height);
    
    [self.peaks enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop){
        float printPercent = ((NSNumber *) obj).floatValue;
        NSLog(@"Peak #%lu: %f", (unsigned long)idx, printPercent);
    }];
    
    [[NSColor orangeColor] set];
    [NSBezierPath fillRect:dirtyRect];
    
    [[NSColor blackColor] setStroke];
    [[NSColor redColor] setFill];
  
    
    float graphWidth = self.bounds.size.width;
    float graphHeight = self.bounds.size.height;
    
    NSBezierPath * myGraphPath = [NSBezierPath bezierPath];
    
    NSPoint startPoint = NSMakePoint(0, 0.05 * graphHeight);
    NSPoint endPoint = NSMakePoint(graphWidth, 0.05 * graphHeight);

    
    [myGraphPath moveToPoint:startPoint];
    
    float widthIncrement = graphWidth / self.peaks.count-1;
    float currentWidthPos = startPoint.x + widthIncrement;
    
    
    for (id nextPeak in self.peaks ) {
        [myGraphPath lineToPoint:NSMakePoint(currentWidthPos, ((NSNumber *)nextPeak).floatValue * graphHeight)];
        [myGraphPath stroke];
                                             
        currentWidthPos = currentWidthPos + widthIncrement;

    }
    
    [myGraphPath lineToPoint:endPoint];
    [myGraphPath stroke];
    
}


- (void) refreshData:(NSArray*) peaks {

    self.peaks = peaks;
    
}


@end
