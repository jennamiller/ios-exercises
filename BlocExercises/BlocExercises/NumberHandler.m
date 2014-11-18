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
    return [NSNumber numberWithInt:(number.intValue * 2)];
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableArray *allTheNumbers = [NSMutableArray new];
    if (number <= otherNumber) {
        while (number <= otherNumber) {
            [allTheNumbers addObject:[NSNumber numberWithInt:((int)number)]];
            ++number;
    }
    } else if (number >= otherNumber) {
        while (number >= otherNumber) {
        [allTheNumbers addObject:[NSNumber numberWithInt:((int)otherNumber)]];
        ++otherNumber;
    }
    }
    return allTheNumbers;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    NSNumber *smallestNumber = @1000000;
    for (int i = 0; i < arrayOfNumbers.count; i++) {
        if ((NSNumber)[arrayOfNumbers objectAtIndex:i].intValue < smallestNumber.intValue) {
            smallestNumber.intValue = ((NSNumber)[arrayOfNumbers objectAtIndex:i]).intValue;
        }
    }
    return (int)smallestNumber;
}

@end