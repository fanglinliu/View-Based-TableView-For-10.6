//
//  MyTextField.m
//  TestFirstResponder
//
//  Created by fanglin liu on 12-4-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "EditingWhiteBkColorTextField.h"

@implementation EditingWhiteBkColorTextField


- (void) drawRect:(NSRect)dirtyRect
{
    if ([[(NSView*)self.window.firstResponder superview] superview] == self)
    {
        [NSGraphicsContext saveGraphicsState];
        [[NSColor whiteColor] set];
        NSRectFill([self bounds]);
        
        [NSGraphicsContext restoreGraphicsState];
    }
    
    [super drawRect:dirtyRect];
}

- (BOOL) acceptsFirstMouse:(NSEvent *)theEvent
{
    return YES;
}

- (BOOL) becomeFirstResponder
{
    NSLog(@"becomeFirstResponder stringValue: %@", [self stringValue]);

    NSTableView* tableView = (NSTableView*)[[self superview] superview];
    if (tableView && [tableView isKindOfClass:[NSTableView class]])
    {
        [tableView becomeFirstResponder];
    }

    [super becomeFirstResponder];
    
    return YES;
}

- (void)textDidEndEditing:(NSNotification *)aNotification
{
    NSLog(@"textDidEndEditing 1 stringValue: %@", [self stringValue]);

    NSTableView* tableView = (NSTableView*)[[self superview] superview];
    if (tableView && [tableView isKindOfClass:[NSTableView class]])
    {
        [tableView textDidEndEditing:aNotification];
    }


    //don't call [super textDidEndEditing:aNotification]. Otherwise, it will cause some prolem when NSTextField become first responder by enter or return key and then resign first responer. after resign first responder, NSTextField's stringValue become empty.

//    [super textDidEndEditing:aNotification]; 
    

}


@end
