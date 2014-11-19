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
    for (NSDictionary *dictionary in charactersArray) {
        for (NSString *key in dictionary) {
            NSString *value = [dictionary objectForKey:key];
            if ([key isEqualToString:@"favorite drink"]) {
                [favoriteDrinks addObject:(@"%@", value)];
            }
        }
    }
    return favoriteDrinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary *characterWithQuote = [characterDictionary mutableCopy];
    [characterWithQuote setObject:@"inspirational quote" forKey:@"quote"];
    return characterWithQuote;
}

@end
