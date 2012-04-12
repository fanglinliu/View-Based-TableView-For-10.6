//
//  SelectionCellSubView.h
//  SWA
//
//  Created by fanglin liu on 12-4-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SelectionCellSubView : NSView
{
    NSTextField* fileNameTextField_;
}

@property (nonatomic, assign, readwrite) IBOutlet NSTextField* fileNameTextField;

@end
