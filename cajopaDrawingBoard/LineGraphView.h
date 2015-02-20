//
//  LineGraphView.h
//  cajopaDrawingBoard
//
//  Created by Parker, Carl (HBO) on 2/16/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface LineGraphView : NSView

- (void) refreshData:(NSArray*) peaks;

@end
