//
//  NSDate+Utilities.h
//  MiddMenus
//
//  Created by Thomas Beatty on 1/21/13.
//  Copyright (c) 2013 Thomas Beatty. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 Welcome to the fourth dimension.
 
 This class extends NSDate to include functions for manipulating time.
 */

@interface NSDate (Utilities)

///---------------------------------------------------------------------------------------
/// @name Class Methods
///---------------------------------------------------------------------------------------

/**
 Returns a new object the same day at the date specified.
 
 The object returned is at midnight of the morning of the date parameter. Does not preserve time, only day. Time zone is preserved.
 
 @param date Date to find the day of.
 
 @return NSDate A new NSDate object on the same day as date.
 */
+(NSDate *)dayOf:(NSDate *)date;

/**
 Returns a new object the day after the date specified.
 
 The object returned is at midnight of the morning of the day after the date parameter. Does not preserve time, only day. Time zone is preserved.
 
 @param date Date to find the day after.
 
 @return NSDate A new NSDate object the day after date.
 */
+(NSDate *)dayAfter:(NSDate *)date;

/**
 Returns a new object the day before the date specified.
 
 The object returned is at midnight of the morning of the day before the date parameter. Does not preserve time, only day. Time zone is preserved.
 
 @param date Date to find the day before.
 
 @return NSDate A new NSDate object the day before date.
 */
+(NSDate *)dayBefore:(NSDate *)date;

/**
 Returns the current date as a unix timestring.
 
 @return NSString The current Unix timestamp formatted as a string.
 */
+(NSString *)currentUnixTimestampString;

/**
 Returns the current date as a unix timestamp.
 
 @return NSNumber The current Unix timestamp formatted as a number.
 */
+(NSNumber *)currentUnixTimestampNumber;

///---------------------------------------------------------------------------------------
/// @name Instance Methods
///---------------------------------------------------------------------------------------

/**
 Compares two dates to see if they are the same.
 
 @param date The date to compare.
 
 @return BOOL YES if the dates are on the same day, NO otherwise.
 */
-(BOOL)isSameDayAsDate:(NSDate*)date;

/**
 Reports the time of the date parameter as an integer between 0 and 2400.
 
 @param date NSDate date to be analyzed.
 
 @return NSInteger Representation of the datetime between 0 and 2400. Always less than 2400.
 */
-(NSInteger)time;

@end
