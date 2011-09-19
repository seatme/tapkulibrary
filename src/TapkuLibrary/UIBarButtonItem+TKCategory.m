//
//  UIBarButtonItem+TKCategory.m
//  TapkuLibrary
//
//  Created by Devin Ross on 3/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "UIBarButtonItem+TKCategory.h"
#import "UIButton+TKCategory.h"

@implementation UIBarButtonItem (TKCategory)

+ (UIBarButtonItem*) barButtonItemWithTitle:(NSString*)title
							backgroundImage:(UIImage*)backgroundImage 
				 highlightedBackgroundImage:(UIImage*)highlighedBackgroundImage 
									 target:(id)target selector:(SEL)s{
	
	UIButton *btn = [UIButton buttonWithFrame:CGRectMake(0,0,52,44) title:title];
	[btn addTarget:target action:s forControlEvents:UIControlEventTouchUpInside];

	UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:btn];
	item.target = target;
	item.action = s;
	return [item autorelease];
	
}


@end
