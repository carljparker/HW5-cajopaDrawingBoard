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
}

@end
