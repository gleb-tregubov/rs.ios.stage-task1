//
//  OddNumbers.m
//  ios.stage-task1
//
//  Created by Alex Tsybulko on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "OddNumbers.h"

@implementation OddNumbers

- (NSInteger)oddNumbers:(NSArray <NSNumber *> *)array {
    NSInteger oddCount = 0;
    for (NSNumber *num in array) {
        oddCount += (num.intValue % 2 != 0) ? 1 : 0;
    }
    return oddCount;
}

@end
