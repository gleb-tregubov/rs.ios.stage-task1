#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    
    NSOrderedSet <NSNumber *> *orderedSet = [NSOrderedSet orderedSetWithArray:rankedArray];
    
    NSMutableArray <NSNumber *> *res = [NSMutableArray new];
    
    if (playerArray == nil || playerArray.count == 0) {
            return @[];
    }
    
    if (rankedArray == nil || rankedArray.count == 0) {
            for (NSInteger i = 0; i < playerArray.count; i++) {
                res[i] = @(1);
            }
    }
    
    for (NSNumber *playerScore in playerArray) {
        for (int i = 0; i < orderedSet.count; i++) {
            if ([playerScore intValue] > [orderedSet[i] intValue]) {
                [ res addObject: [NSNumber numberWithInteger:(i + 1)] ];
                break;
            }

            if ([playerScore intValue] == [orderedSet[i] intValue]) {
                [ res addObject: [NSNumber numberWithInteger:(i + 1)] ];
                break;
            }

            if ( ([playerScore intValue] < [orderedSet[i] intValue]) && (i + 1 != orderedSet.count) && ([orderedSet[i + 1] intValue] < [playerScore intValue]) ) {
                [res addObject: [NSNumber numberWithInteger:(i + 2)] ];
                break;
            } else if (i + 1 == orderedSet.count) {
                [res addObject: [NSNumber numberWithInteger:(i + 2)] ];
            }
        }
    }
    
    return res;
}

@end
