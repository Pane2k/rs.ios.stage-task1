#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    NSInteger num = ABS([number intValue]);
    NSMutableArray *arr = [[NSMutableArray alloc] init];
    NSInteger i = 0;
    while(num > 0){
        arr[i] = [NSString stringWithFormat:@"%ld", num % 10];
        num /= 10;
        i++;
    }
    return arr;
}

@end
