//
//  Card.h
//  CardGame
//
//  Created by Luis Arias on 03/07/16.
//  Copyright © 2016 Luis Arias. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Card: NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;

@end