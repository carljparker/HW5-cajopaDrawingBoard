//
//  LineGraphVC.m
//  cajopaDrawingBoard
//
//  Created by Parker, Carl (HBO) on 2/18/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//

#import "LineGraphVC.h"
#import "RandomPercentGenerator.h"

@interface LineGraphVC ()

@property (readwrite) NSArray * peaks;

@end

@implementation LineGraphVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}

- (IBAction)refreshPeaks:(id)sender {
    // Drawing code here.
        
    NSArray * peaks = [RandomPercentGenerator arrayOfPercents:6];
        
    [peaks enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop){
        NSLog(@"Peak #%lu: %@", (unsigned long)idx, obj);
    }];
    
    self.peaks = peaks;
    
}

@end
