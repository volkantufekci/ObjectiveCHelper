//
//  VTIosHelperMain.m
//  VTIosHelper
//
//  Created by Volkan Tüfekçi on 4/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "VTIosHelperMain.h"

@implementation VTIosHelperMain

+ (NSDate *)addMonths:(NSInteger)monthsToBeAdded toDate:(NSDate *)date
{
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    
    NSDateComponents *comps = [[NSDateComponents alloc] init];
    [comps setMonth:monthsToBeAdded];
    NSDate *monthsAddedDate = [gregorian dateByAddingComponents:comps toDate:date  options:0];
    [comps release];
    [gregorian release];
    
    return monthsAddedDate;
}

+ (NSDate *)formatDate:(NSDate *)date 
      withFormatString:(NSString *)formatString 
          withTimeZone:(NSTimeZone *)timeZone
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:formatString];
    [formatter setTimeZone:timeZone];
    NSString *string = [formatter stringFromDate:date];
    NSDate *monthsAddedDate = [formatter dateFromString:string];
    
    [formatter release];
    
    return monthsAddedDate;
}

+ (void)testFormatDate
{
    NSTimeZone *timeZone = [NSTimeZone timeZoneWithName:@"Europe/Istanbul"];
    NSString *formatString = @"yyyy-MM-dd";
    
    NSDate *formattedDate = [self formatDate:[NSDate date] withFormatString:formatString withTimeZone:timeZone];
    NSLog(@"Formatted Date: %@", formattedDate);
}

@end
