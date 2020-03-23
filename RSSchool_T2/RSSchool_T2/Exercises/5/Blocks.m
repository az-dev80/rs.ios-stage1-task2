#import "Blocks.h"

@implementation Blocks {
    NSArray* myArray;
    BlockC cblock;}
- (BlockA) blockA {
    return [^(NSArray *array) {
    myArray = [array copy]; } copy];}
- (BlockB) blockB {
    return [^(Class q) {
        if ([NSString class] == q) {
            NSString *x = @"";
            
            for (NSObject *y in myArray) {
                if ([y isKindOfClass:q]) {
                    x = [x stringByAppendingString:(NSString *)y];
                }
            }
            cblock(x);
        } else if ([NSNumber class] == q) {
            int x = 0;
            
            for (NSObject *y in myArray) {
                if ([y isKindOfClass:q]) {
                    x += [(NSNumber *)y intValue];}
            }
            cblock([[NSNumber alloc] initWithInt:x]);
        } else if ([NSDate class] == q) {
           NSTimeInterval x = 0;
            
            for (NSObject *y in myArray) {
             
            
            if ([y isKindOfClass:q]) {
                   NSTimeInterval timeInterval = [(NSDate *)y timeIntervalSince1970];
                    
                   if (timeInterval > x) {
                       x = timeInterval;
                   };
                
        }
            }
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
           [dateFormatter setDateFormat:@"dd.MM.yyyy"];
           NSDate *date = [NSDate dateWithTimeIntervalSince1970: x];
           NSString *stringDate = [dateFormatter stringFromDate:date];
                            
        cblock(stringDate);
        }

    } copy];
            
}

- (void) setBlockC: (BlockC) c {
   cblock = [c copy];
};




@end

