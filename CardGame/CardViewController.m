//
//  CardViewController.m
//  CardGame
//
//  Created by Luis Arias on 03/07/16.
//  Copyright © 2016 Luis Arias. All rights reserved.
//

#import "CardViewController.h"

@interface CardViewController ()

@property (weak, nonatomic) IBOutlet UILabel *counterLabel;
@property (nonatomic) int flipCount;

@end

@implementation CardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    self.counterLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)touchCardButton:(UIButton *)sender {
    
    int counter;
    
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed: @"backimage"] forState: UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        [sender setBackgroundImage:[UIImage imageNamed: @"frontimage"] forState: UIControlStateNormal];
        [sender setTitle:@"A♥︎" forState:UIControlStateNormal];
    }
    self.flipCount++;
}

@end
