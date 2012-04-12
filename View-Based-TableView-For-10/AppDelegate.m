//
//  AppDelegate.m
//  TestFirstResponder
//
//  Created by fanglin liu on 12-4-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "FileSystemBrowserCell.h"
#import "EditingWhiteBkColorTextField.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize tableView = tableView_;

@synthesize selectionCellSubviewController = selectionCellSubviewController_;


- (void)dealloc
{
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
}

- (void) awakeFromNib
{
    self.selectionCellSubviewController = [[[SelectionCellSubviewController alloc] init] autorelease];
}


#pragma mark-----tableView dataSource Methods-------
- (NSInteger)numberOfRowsInTableView:(NSTableView *)aTableView
{
    return 3;
}

- (void)tableView:(NSTableView *)aTableView willDisplayCell:(id)aCell forTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)rowIndex
{
    if (rowIndex == [self.tableView selectedRow]) 
    {
        FileSystemBrowserCell* cell = (FileSystemBrowserCell*)aCell;
        self.selectionCellSubviewController.fileName =  @"selection view";
        cell.view = (SelectionCellSubView*)self.selectionCellSubviewController.view;
        
        cell.stringValue = @"file name";

    }
    else 
    {
        FileSystemBrowserCell* cell = (FileSystemBrowserCell*)aCell;
        if (cell) 
        {
            cell.stringValue = @"file name";
            
        }
        cell.view = nil;
        
    }
    
}


- (void)tableViewSelectionDidChange:(NSNotification *)aNotification
{
    [self reloadTableViewData];
    
}


- (CGFloat)tableView:(NSTableView *)tableView heightOfRow:(NSInteger)row
{
    NSInteger selectedIndex = [self.tableView selectedRow];
    if ( row == selectedIndex && row != -1 )
    {
        return 66.0f;
    }
    else
    {
        return 22.0f;
    }
  
}


- (void) reloadTableViewData
{
    while ([[self.tableView subviews] count] > 0)
    {
		[[[self.tableView subviews] lastObject] removeFromSuperviewWithoutNeedingDisplay];
    }
    [self.tableView reloadData];
    
}



@end
