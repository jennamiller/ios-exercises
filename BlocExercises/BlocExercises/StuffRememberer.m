//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    self.rememberThisArrayForLater = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    self.arrayToCopy = arrayToCopy;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    self.rememberThisFloatForLater = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    return self.rememberThisArrayForLater;
}

- (NSMutableArray *) arrayYouShouldCopy {
    NSMutableArray *arrayCopy = [[NSMutableArray alloc] initWithArray:(self.arrayToCopy)];
    return arrayCopy;
}

- (CGFloat) floatYouShouldRemember {
    return self.rememberThisFloatForLater;
}

@end