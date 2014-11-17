//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    NSNumber *newNumber = [NSNumber numberWithInt:@"@%", number];
    newNumber * 2;
    return newNumber;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableArray *allTheNumbers;
    while (number < otherNumber) {
        [allTheNumbers addObject:@"%@", number];
        ++number;
    } else while (number > otherNumber) {
        [allTheNumbers addObject:@"%@", otherNumber];
        ++otherNumber;
    }
    return allTheNumbers;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    if (number < otherNumber) {
        return number;
    } else {
        return otherNumber;
    }
    return YES;
}

@end
 