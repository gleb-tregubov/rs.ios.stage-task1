#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    
    NSInteger n = ABS([number integerValue]);

    NSMutableArray *res = [NSMutableArray new];
    
    NSNumberFormatter *numberFormatter = [NSNumberFormatter new];
    numberFormatter.negativePrefix = @"";
    NSString *str = [numberFormatter stringFromNumber:number];
    for (int i = 0; i < str.length; i++) {
        [res addObject: [NSString stringWithFormat:@"%ld", n % 10] ];
        n = n / 10;
    }

    return res;
}

@end
