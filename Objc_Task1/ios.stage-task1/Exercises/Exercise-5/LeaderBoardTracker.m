#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    NSMutableArray *rankPos = [[NSMutableArray alloc] init];
    for (NSNumber *playerRank in playerArray){
        NSOrderedSet *rankSet = [NSOrderedSet orderedSetWithArray:rankedArray];
        NSArray *ranked = [rankSet array];
        NSUInteger pos = 1;
        for (NSNumber *rank in ranked){
            if([playerRank integerValue] >= [rank integerValue])
                break;
            pos++;
        }
        [rankPos addObject:@(pos)];
    }
    return rankPos;
}

@end
