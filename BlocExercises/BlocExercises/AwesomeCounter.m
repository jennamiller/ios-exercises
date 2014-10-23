//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    if (number == otherNumber) {
        return [NSString stringWithFormat:@"%lu", number];
    }
    
    NSMutableString *stringReturned = [NSMutableString new];
    while (number != otherNumber) {
        if (number < otherNumber) {
        stringReturned = @"%lu", ++number;
        } else if (number > otherNumber) {
        stringReturned = @"%lu", ++otherNumber;
        }
    }
    return stringReturned;
}

@end