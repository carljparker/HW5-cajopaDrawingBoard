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
    
   
    NSLog(@"--- Line Graph View ---");
    NSLog(@"Frame: Width: %f", self.frame.size.width);
    NSLog(@"Frame: Height: %f", self.frame.size.height);
    
    NSLog(@"Bounds: Width: %f", self.bounds.size.width);
    NSLog(@"Bounds: Height: %f", self.bounds.size.height);

    
    // Drawing code here.
    
  

}

@end
