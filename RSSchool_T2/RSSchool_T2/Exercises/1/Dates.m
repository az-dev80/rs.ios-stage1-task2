#import "Dates.h"

@implementation Dates

- (NSString *)textForDay:(NSString *)day month:(NSString *)month year:(NSString *)year {
    
    NSDateComponents *dateComponents = [[[NSDateComponents alloc] init] autorelease];
    [dateComponents setYear: year.intValue];
    [dateComponents setMonth: month.intValue];
    [dateComponents setDay:day.intValue];

    NSDate *date = [[NSCalendar currentCalendar] dateFromComponents:dateComponents];
    if ([dateComponents isValidDateInCalendar: [NSCalendar currentCalendar]])
        {NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"d MMMM, EEEE"];
    dateFormatter.locale = [NSLocale localeWithLocaleIdentifier:@"ru_RU"];

    NSString *dateString = [dateFormatter stringFromDate:date];

    NSLog(@"%@", dateString);
        return dateString;}
    else return @"Такого дня не существует";
}

@end
