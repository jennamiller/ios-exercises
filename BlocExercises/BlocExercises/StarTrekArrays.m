//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    NSArray *arrayOfStarTrekCharactersFromString = [characterString componentsSeparatedByString:@";"];
    [arrayOfStarTrekCharactersFromString enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"%@", obj);
    }];
    return arrayOfStarTrekCharactersFromString;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSString *stringOfStarTrekCharactersFromArray = [characterArray componentsJoinedByString:@";"];
    return stringOfStarTrekCharactersFromArray;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSArray *alphabeticallySortedStarTrekCharactersFromArray = characterArray;
    NSSortDescriptor *sortStarTrek = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [alphabeticallySortedStarTrekCharactersFromArray sortUsingDescriptors:@[sortStarTrek]];
    return alphabeticallySortedStarTrekCharactersFromArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    [characterArray filterUsingPredicate:containsWorf];
    return characterArray;
}

@end
