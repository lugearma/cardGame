//
//  CardViewController.m
//  CardGame
//
//  Created by Luis Arias on 03/07/16.
//  Copyright © 2016 Luis Arias. All rights reserved.
//

#import "CardViewController.h"
#import "Deck.h"
#import "PlayingCard.h"
#import "PlayingCardDeck.h"

@interface CardViewController ()

@property (weak, nonatomic) IBOutlet UILabel *counterLabel;
@property (nonatomic) int flipCount;
@property (nonatomic, strong) Deck *deck;
@property (nonatomic, strong) PlayingCardDeck *playingCardDeck;

@end

@implementation CardViewController

- (Deck *)deck{
    if(!_deck) _deck = [[Deck alloc] init];
    return _deck;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    self.counterLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)touchCardButton:(UIButton *)sender {
    self.playingCardDeck = [[PlayingCardDeck alloc] init];
    Card *randomCard = [self.playingCardDeck drawRandomCard];
    
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed: @"backimage"] forState: UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        [sender setBackgroundImage:[UIImage imageNamed: @"frontimage"] forState: UIControlStateNormal];
        [sender setTitle:[randomCard contents] forState:UIControlStateNormal];
    }
    self.flipCount++;
}

@end
