//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    id favoriteDrink = characterDictionary[@"favorite drink"];
    if (favoriteDrink != nil && [favoriteDrink isKindOfClass:[NSString class]]) {
        NSLog(@"%@", favoriteDrink);
    } else {
        nil;
    }
    return favoriteDrink;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSMutableArray *favoriteDrinks = [NSMutableArray new];
    [charactersArray enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop)
    if (containsString:@"favorite drink") {
        [favoriteDrinks addObjectFromArray:charactersArray];
    } else {
        nil;
    }]
    return favoriteDrinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary *characterWithQuote = [characterDictionary mutableCopy];
    addObjectToDictionary:@"Inspirational quote";
    return characterWithQuote;
}

@end
