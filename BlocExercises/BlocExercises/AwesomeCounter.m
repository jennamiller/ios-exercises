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
    while (number != otherNumber) {
    if (number < otherNumber) {
        ++number;
    } else if (number > otherNumber) {
        --number;
    }
}
    return @"strings differed";
}

@end
 