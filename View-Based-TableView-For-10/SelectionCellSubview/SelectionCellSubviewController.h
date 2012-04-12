//
//  SelectionCellSubview.h
//  SWA
//
//  Created by fanglin liu on 12-3-22.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SelectionCellSubviewController : NSViewController
{
@private
    
    NSImage* image_;
    NSString* fileName_;
    NSString* contentChangeDate_;
}
@property (nonatomic, retain, readwrite) NSImage* image;
@property (nonatomic, retain, readwrite) NSString* fileName;
@property (nonatomic, retain, readwrite) NSString* contentChangeDate;


@end
