//
//  PlayingCard.m
//  CardGame
//
//  Created by Luis Arias on 03/07/16.
//  Copyright © 2016 Luis Arias. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit = _suit;
@synthesize rank = _rank;

- (NSString *)contents {
    NSArray *rankString = [PlayingCard rankString];
    return [rankString[self.rank] stringByAppendingString:self.suit];
}

+ (NSArray *)validSuits {
    return @[@"♥", @"♦", @"♠", @"♣"];
}

+ (NSArray *)rankString {
    return @[@"?", @"A", @"2", @"3",@"4", @"5", @"6", @"7", @"8", @"9",@"10", @"J", @"Q", @"K"];
}

+ (NSUInteger)maxRank {
    return [[self rankString] count] -1;
}

- (void)setSuit:(NSString *)suit {
    if([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)suit {
    return _suit ? _suit : @"?";
}

- (void)setRank:(NSUInteger)rank {
    if(rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

@end
