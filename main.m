//
//  main.m
//  March22
//
//  Created by John Eiche on 3/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "firstAppDelegate.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        //sample code to display in output window
        NSLog(@"This is output produced by NSLog.");
		NSLog(@"iOS version %@", [UIDevice currentDevice].systemVersion);
        int i = 10;
        NSLog(@"The value of i is %d.", i);
        NSLog(@"The address of i is %p.", &i);			//p for pointer        
        CGFloat f = 3.14159;
        NSLog(@"The value of f is %g.", f);
        
        NSLog(@"On my device, CHAR_BIT = %u.", CHAR_BIT );
        NSLog(@"On my device, a CGFloat occupies %lu bits.",
              CHAR_BIT * sizeof (CGFloat));
        
        CGRect rect = CGRectMake(0.0, 0.0, 320.0, 480.0);	//x, y, width, height
        CGPoint p = rect.origin;	//The fields inside of rect
        
        NSLog(@"The points x = %f, y = %f", p.x, p.y);
        NSLog(@"The points x = %f, y = %f", rect.origin.x, rect.origin.y);
        CGSize s = rect.size;		//are named rect.origin and rect.size
        
        NSLog(@"The width of rect = %f, height of rect = %f", s.width, s.height);
        NSLog(@"The width of rect = %f, height of rect = %f", rect.size.width, rect.size.height);
        
        UIScreen *s2 = [UIScreen mainScreen];
        CGRect b = [s2 bounds];
        NSLog(@"The width of the mainScreen = %f, height of the mainScreen = %f", b.size.width, b.size.height );
        
        id p2 = nil;
        NSLog(@"The value of p2 is %g.", p2);
        NSLog(@"The address of p2 is %p.", &p2);
        
        UIDevice *device = [UIDevice currentDevice];
        NSString *version = device.systemVersion;
        NSLog(@"Version of iOS: %@", version);	//Output an NString with %@. 
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([firstAppDelegate class]));
    }
}
