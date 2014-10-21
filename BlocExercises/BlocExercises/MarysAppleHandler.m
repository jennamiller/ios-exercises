//
//  MarysAppleHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/8/14.
//
//

#import "MarysAppleHandler.h"

@implementation MarysAppleHandler

- (NSString *) itemMaryCanPurchaseForDollars:(NSInteger)dollars {
    NSString *itemToReturn;
    { if (dollars == 4) {
        itemToReturn = @"get ouf of the store";
    } if (dollars == 5) {
        itemToReturn = @"have some gum";
    } if (dollars == 6) {
        itemToReturn = @"have an apple";
    } if (dollars > 1000) {
        itemToReturn = @"have an Apple computer";
    } if (dollars == 1000000000) {
        itemToReturn = @"have a Big Apple";
    }
}

- (NSUInteger) dollarCostForAppleFlavoredVodka {
    NSUInteger *dollarCostForAppleFlavoredVodka = _getsDiscount ? (cost *= .75) : 24: cost;
   return cost;
    
    @end