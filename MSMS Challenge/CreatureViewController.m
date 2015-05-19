//
//  CreatureViewController.m
//  MSMS Challenge
//
//  Created by Max Lettenberger on 5/19/15.
//  Copyright (c) 2015 Max. All rights reserved.
//

#import "CreatureViewController.h"


@interface CreatureViewController ()

@property (weak, nonatomic) IBOutlet UITextField *creatureNameEditText;
@property (weak, nonatomic) IBOutlet UILabel *creatureNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;

@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    

    self.title = self.magicCreature.name;

    self.creatureNameLabel.text = self.magicCreature.name;

    self.creatureNameEditText.text = self.magicCreature.name;

    self.creatureNameEditText.hidden = YES;

    self.detailLabel.text = self.magicCreature.detail;
}

- (IBAction)onEditButtonPressed:(UIButton *)sender
{

    if ([sender.titleLabel.text isEqualToString:@"Edit"])
   {
       [sender setTitle:@"Done" forState:UIControlStateNormal];

       self.creatureNameEditText.hidden = NO;

   } else {
       [sender setTitle:@"Edit" forState:UIControlStateNormal];
       self.creatureNameEditText.hidden = YES;
       self.magicCreature.name = self.creatureNameEditText.text;
       self.creatureNameLabel.text = self.magicCreature.name;

   }
}




@end
