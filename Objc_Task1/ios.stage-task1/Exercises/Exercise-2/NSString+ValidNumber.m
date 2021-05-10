#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    if(self == nil || self.length == 0){
        return false;
    }
    NSCharacterSet *numSet = NSCharacterSet.decimalDigitCharacterSet;
    for (NSInteger i = 0; i < self.length; i++){
        unichar cstring = [self characterAtIndex:i];
        if (![numSet characterIsMember:cstring])
            return false;
    }
    return true;
}

@end
