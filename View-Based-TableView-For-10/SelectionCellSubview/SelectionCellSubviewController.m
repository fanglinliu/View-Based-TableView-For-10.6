//
//  SelectionCellSubview.m
//  SWA
//
//  Created by fanglin liu on 12-3-22.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SelectionCellSubviewController.h"

@implementation SelectionCellSubviewController


@synthesize image = image_;
@synthesize fileName = fileName_;
@synthesize contentChangeDate = contentChangeDate_;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}


- (id) init
{
    self = [super initWithNibName:@"SelectionCellSubview" bundle:nil];
    if (self) 
    {
        
    }
    
    return self;
}

//- (void)controlTextDidBeginEditing:(NSNotification *)aNotification
//{
//    NSLog(@"controlTextDidBeginEditing");
//}
//
//
//- (BOOL)control:(NSControl *)control textShouldBeginEditing:(NSText *)fieldEditor
//{
//    NSLog(@"textShouldBeginEditing");
//    return YES;
//}

@end
