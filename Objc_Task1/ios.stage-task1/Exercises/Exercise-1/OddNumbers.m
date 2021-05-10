//
//  OddNumbers.m
//  ios.stage-task1
//
//  Created by Alex Tsybulko on 4.05.21.
//  Edited by Pavel Nevyhlas on 10.05.21
//

#import <Foundation/Foundation.h>
#import "OddNumbers.h"

@implementation OddNumbers

- (NSInteger)oddNumbers:(NSArray <NSNumber *> *)array {
    NSInteger odd_counter = 0;
    for(NSNumber *i in array){
        if(i.intValue % 2)
            odd_counter++;
    }
    return odd_counter;
}

@end
