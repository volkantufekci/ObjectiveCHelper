//
//  VTAppDelegate.h
//  VTIosHelper
//
//  Created by Volkan Tüfekçi on 4/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class VTViewController;

@interface VTAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) VTViewController *viewController;

@end
