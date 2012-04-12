//
//  AppDelegate.h
//  TestFirstResponder
//
//  Created by fanglin liu on 12-4-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "SelectionCellSubviewController.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>
{
    SelectionCellSubviewController* selectionCellSubviewController_;
}

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTableView* tableView;

@property (retain) SelectionCellSubviewController* selectionCellSubviewController;

- (void) reloadTableViewData;

@end
