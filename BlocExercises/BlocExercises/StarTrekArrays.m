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

- (NSMutableArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSMutableArray *alphabeticalCharacters = [NSMutableArray new];
    [alphabeticalCharacters addObjectsFromArray:characterArray];
    NSSortDescriptor *sortStarTrek = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [alphabeticalCharacters sortUsingDescriptors:@[sortStarTrek]];
    return alphabeticalCharacters;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    NSMutableArray *alphabeticalCharacters = [NSMutableArray new];
    [alphabeticalCharacters addObjectsFromArray:characterArray];
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    [alphabeticalCharacters filterUsingPredicate:containsWorf];
    if (alphabeticalCharacters.count == 0 ) {
        return NO;
    } else {
    return YES;
    }
}

@end
