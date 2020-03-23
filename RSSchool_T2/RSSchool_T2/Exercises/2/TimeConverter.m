#import "TimeConverter.h"

@implementation TimeConverter
// Complete the following function
- (NSString*)convertFromHours:(NSString*)hours minutes:(NSString*)minutes {
    NSArray * hoursName = @[@"zero", @"one", @"two", @"three", @"four", @"five", @"six", @"seven", @"eight", @"nine", @"ten",@"eleven", @"twelve", @"thirteen", @"fourteen", @"fifteen", @"sixteen", @"seventeen", @"eighteen", @"nineteen", @"twenty", @"twenty one", @"twenty two", @"twenty three", @"twenty four", @"twenty five", @"twenty six", @"twenty seven", @"twenty eight", @"twenty nine"];
    NSArray * minutesName = @[@"zero minutes", @"one minute", @"two minutes", @"three minutes", @"four minutes", @"five minutes", @"six minutes", @"seven minutes", @"eight minutes", @"nine minutes", @"ten minutes",@"eleven minutes", @"twelve minutes", @"thirteen minutes", @"fourteen minutes", @"fifteen minutes", @"sixteen minutes", @"seventeen minutes", @"eighteen minutes", @"nineteen minutes", @"twenty minutes", @"twenty one minutes", @"twenty two minutes", @"twenty three minutes", @"twenty four minutes", @"twenty five minutes", @"twenty six minutes", @"twenty seven minutes", @"twenty eight minutes", @"twenty nine minutes"];
    if (minutes.intValue == 0) {
        NSString *a = [hoursName objectAtIndex: hours.intValue];
        NSString *b = [NSString stringWithFormat:@"%@ o' clock", a];;
        return b;
    }
    else if (((minutes.intValue > 0) && (minutes.intValue < 15)) || ((minutes.intValue > 15) && (minutes.intValue < 30))){
        NSString *a = [hoursName objectAtIndex: hours.intValue];
        NSString *c = [minutesName objectAtIndex: minutes.intValue];
        NSString *b = [NSString stringWithFormat: @"%@ past %@",c,a];
        return b;
    }
    else if (minutes.intValue == 15) {
        NSString *a = [hoursName objectAtIndex: hours.intValue];
        NSString *b = [NSString stringWithFormat:@"quarter past %@", a];;
        return b;
    }
    else if (minutes.intValue == 30) {
        NSString *a = [hoursName objectAtIndex: hours.intValue];
        NSString *b = [NSString stringWithFormat:@"half past %@", a];;
        return b;
    }
    else if (((minutes.intValue > 30) && (minutes.intValue < 45)) || ((minutes.intValue > 45) && (minutes.intValue < 60))){
    NSString *a = [hoursName objectAtIndex: hours.intValue+1];
    NSString *c = [minutesName objectAtIndex: 60 - minutes.intValue];
    NSString *b = [NSString stringWithFormat: @"%@ to %@",c,a];
    return b;
    }
    else if (minutes.intValue == 45) {
        NSString *a = [hoursName objectAtIndex: hours.intValue+1];
        NSString *b = [NSString stringWithFormat:@"quarter to %@", a];;
        return b;
    }
    else
    return @"";
}
@end
