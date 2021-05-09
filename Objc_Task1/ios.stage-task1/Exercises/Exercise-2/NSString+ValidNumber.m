#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {

    NSString *regex = @"^[0-9]+$";
    NSPredicate *test = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    BOOL matches = [test evaluateWithObject: self];
    
    
    if (matches) {
        return true;
    }
    
    return false;
}

@end
