//
//  NSDate+NSDate_Utilities.m
//  MiddMenus
//
//  Created by Thomas Beatty on 1/21/13.
//  Copyright (c) 2013 Thomas Beatty. All rights reserved.
//

#import "NSDate+NSDate_Utilities.h"

@implementation NSDate (NSDate_Utilities)

#pragma mark - Class Methods

+(NSDate *)dayOf:(NSDate *)date {
    
}

+(NSDate *)dayAfter:(NSDate *)date {
    
}

+(NSString *)currentUnixTimestampString {
    return [NSString stringWithFormat:@"%d", (int)[[NSDate date] timeIntervalSince1970]];
}

+(NSNumber *)currentUnixTimestampNumber {
    return @((int)[[NSDate date] timeIntervalSince1970]);
}

#pragma mark - Instance Methods

-(BOOL)isSameDayAsDate:(NSDate*)date {
    NSCalendar* calendar = [NSCalendar currentCalendar];
    
    unsigned unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit |  NSDayCalendarUnit;
    NSDateComponents* comp1 = [calendar components:unitFlags fromDate:date];
    NSDateComponents* comp2 = [calendar components:unitFlags fromDate:self];
    
    return [comp1 day]   == [comp2 day] &&
    [comp1 month] == [comp2 month] &&
    [comp1 year]  == [comp2 year];
}


@end
