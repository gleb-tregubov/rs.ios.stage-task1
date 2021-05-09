#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    
    NSUInteger left = 0;
    NSUInteger right = self.count - 1;
    NSUInteger mid;

    if (self.count == 0) {
        return nil;
    }

    if (self.count == 1) {
        return self[0];
    }

    if ([self[right] intValue] > [self[left] intValue]) {
            return self[0];
    }

    while (right >= left) {
        mid = left + (right - left) / 2;

        if ([self[mid] intValue] > [self[mid + 1] intValue]) {
            return self[mid + 1];
        }
        if ([self[mid - 1] intValue] > [self[mid] intValue]) {
            return self[mid];
        }

        if ([self[mid] intValue] > [self[left] intValue]) {
            left = mid + 1;
        } else {
            right = mid;
        }
    }
    return nil;
}

@end
