//
//  ViewController.m
//  cajopaDrawingBoard
//
//  Created by Parker, Carl (HBO) on 2/15/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    
    NSStoryboard *sb = [NSStoryboard storyboardWithName:@"Main" bundle:nil];
    
    NSWindowController *wc = [sb instantiateControllerWithIdentifier:@"Drawing Board Window Controller"];
    

}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end
