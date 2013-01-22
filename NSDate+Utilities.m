//
//  NSDate+Utilities.m
//  MiddMenus
//
//  Created by Thomas Beatty on 1/21/13.
//  Copyright (c) 2013 Thomas Beatty. All rights reserved.
//

#import "NSDate+Utilities.h"

@implementation NSDate (Utilities)

#pragma mark - Class Methods

+(NSDate *)dayOf:(NSDate *)date {
    
    NSCalendar *calendar = [NSCalendar autoupdatingCurrentCalendar];
    [calendar setTimeZone:[NSTimeZone localTimeZone]];
    NSUInteger preservedComponents = (NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSTimeZoneCalendarUnit);
    NSDate * today = [calendar dateFromComponents:[calendar components:preservedComponents fromDate:date]];
    
    return today;
}

+(NSDate *)dayAfter:(NSDate *)date {
    NSCalendar *calendar = [NSCalendar autoupdatingCurrentCalendar];
    [calendar setTimeZone:[NSTimeZone localTimeZone]];
    NSUInteger preservedComponents = (NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSTimeZoneCalendarUnit);
    NSDate * today = [calendar dateFromComponents:[calendar components:preservedComponents fromDate:[NSDate dateWithTimeInterval:(24*3600) sinceDate:date]]];
    
    return today;
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
