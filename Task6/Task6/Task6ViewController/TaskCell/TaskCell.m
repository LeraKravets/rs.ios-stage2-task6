//
//  TaskCell.m
//  Task6
//
//  Created by Лера on 6/25/20.
//  Copyright © 2020 com.vkravets. All rights reserved.
//

#import "TaskCell.h"
#import "UIColor+ColorPalette.h"
#import "AppDelegate.h"
#import <sys/utsname.h>
#import "StartViewController.h"

@implementation TaskCell

int const BUTTON_HEIGH = 55;

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)configure {
    [self createCell];
    [self setupBackButtom];
    [self setupCVButtom];
    [self setupDeviseNameLabel];
    [self setupDeviseModelLabel];
    [self setupDeviseSystemLabel];
    [self.appleImage setImage:[UIImage imageNamed:@"apple"]];
}

-(void)createCell {
//    self.cellView = [UIView new];
    [self.cellView setBackgroundColor:UIColor.customWhite];
//    [self setSelectedBackgroundView: self.cellView];
}

- (void)setupDeviseNameLabel {
    self.deviseNameLabel.font = [UIFont systemFontOfSize:18 weight:UIFontWeightMedium];
    self.deviseNameLabel.textColor = UIColor.customBlack;
    self.deviseNameLabel.text = [UIDevice currentDevice].name;
    self.deviseNameLabel.textAlignment = NSTextAlignmentLeft;
}

- (void)setupDeviseModelLabel {
    self.deviseModelLabel.font = [UIFont systemFontOfSize:18 weight:UIFontWeightMedium];
    self.deviseModelLabel.textColor = UIColor.customBlack;
    self.deviseModelLabel.text = [UIDevice currentDevice].model;
    self.deviseModelLabel.textAlignment = NSTextAlignmentLeft;
}

- (void)setupDeviseSystemLabel {
    self.deviseSystemLabel.font = [UIFont systemFontOfSize:18 weight:UIFontWeightMedium];
    self.deviseSystemLabel.textColor = UIColor.customBlack;
    self.deviseSystemLabel.text = [NSString stringWithFormat:@"%@ %@", [UIDevice currentDevice].systemName, [UIDevice currentDevice].systemVersion];
    self.deviseSystemLabel.textAlignment = NSTextAlignmentLeft;
}

- (void)setupBackButtom {
    self.backButton.backgroundColor = UIColor.customRed;
    self.backButton.titleLabel.font = [UIFont systemFontOfSize:20 weight:UIFontWeightMedium];
    [self.backButton setTitle:@"Go to Start!" forState:UIControlStateNormal];
    [self.backButton setTitleColor: UIColor.customWhite forState:UIControlStateNormal];
    self.backButton.layer.cornerRadius = BUTTON_HEIGH/2;

//    [self.backButton addTarget:self
//                         action:@selector(selectorBackButtonTapped:)
//               forControlEvents:UIControlEventTouchUpInside];

    self.backButton.translatesAutoresizingMaskIntoConstraints = false;
    NSLayoutConstraint *constraint1 = [NSLayoutConstraint constraintWithItem:self.backButton
                                                                      attribute:NSLayoutAttributeTop
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:self.cVButton
                                                                      attribute:NSLayoutAttributeBottom
                                                                     multiplier:1
                                                                       constant:5];

    NSLayoutConstraint *constraint2 = [NSLayoutConstraint constraintWithItem:self.backButton
                                                                   attribute:NSLayoutAttributeHeight
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:nil
                                                                   attribute:NSLayoutAttributeNotAnAttribute
                                                                  multiplier:1
                                                                    constant:BUTTON_HEIGH];

    NSLayoutConstraint *constraint3 = [NSLayoutConstraint constraintWithItem:self.backButton
                                                                   attribute:NSLayoutAttributeWidth
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:nil
                                                                   attribute:NSLayoutAttributeNotAnAttribute
                                                                  multiplier:1
                                                                    constant:300];

    NSLayoutConstraint *constraint4 = [NSLayoutConstraint constraintWithItem:self.backButton
                                                                   attribute:NSLayoutAttributeCenterX
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.secondBorderImage
                                                                   attribute:NSLayoutAttributeCenterX
                                                                  multiplier:1
                                                                    constant:0];

    [constraint1 setActive:true];
    [constraint2 setActive:true];
    [constraint3 setActive:true];
    [constraint4 setActive:true];
}

- (void)setupCVButtom {
    self.cVButton.backgroundColor = UIColor.customYellow;
    self.cVButton.titleLabel.font = [UIFont systemFontOfSize:20 weight:UIFontWeightMedium];
    [self.cVButton setTitle:@"Open Git CV" forState:UIControlStateNormal];
    [self.cVButton setTitleColor: UIColor.customBlack forState:UIControlStateNormal];
    self.cVButton.layer.cornerRadius = BUTTON_HEIGH/2;

//    [self.cVButton addTarget:self
//                         action:@selector(selectorCVButtonTapped:)
//               forControlEvents:UIControlEventTouchUpInside];

    self.cVButton.translatesAutoresizingMaskIntoConstraints = false;
    NSLayoutConstraint *constraint1 = [NSLayoutConstraint constraintWithItem:self.cVButton
                                                                      attribute:NSLayoutAttributeTop
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:self.secondBorderImage
                                                                      attribute:NSLayoutAttributeBottom
                                                                     multiplier:1
                                                                       constant:10];

    NSLayoutConstraint *constraint2 = [NSLayoutConstraint constraintWithItem:self.cVButton
                                                                   attribute:NSLayoutAttributeHeight
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:nil
                                                                   attribute:NSLayoutAttributeNotAnAttribute
                                                                  multiplier:1
                                                                    constant:BUTTON_HEIGH];

    NSLayoutConstraint *constraint3 = [NSLayoutConstraint constraintWithItem:self.cVButton
                                                                   attribute:NSLayoutAttributeWidth
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:nil
                                                                   attribute:NSLayoutAttributeNotAnAttribute
                                                                  multiplier:1
                                                                    constant:300];

    NSLayoutConstraint *constraint4 = [NSLayoutConstraint constraintWithItem:self.cVButton
                                                                   attribute:NSLayoutAttributeCenterX
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.secondBorderImage
                                                                   attribute:NSLayoutAttributeCenterX
                                                                  multiplier:1
                                                                    constant:0];

    [constraint1 setActive:true];
    [constraint2 setActive:true];
    [constraint3 setActive:true];
    [constraint4 setActive:true];
}

- (void)selectorBackButtonTapped: (UIButton *)sender {
    NSLog(@"Tapped");
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    appDelegate.window.rootViewController = [StartViewController new];
    [appDelegate.window makeKeyAndVisible];
}

- (void)selectorCVButtonTapped: (UIButton *)sender {
    NSLog(@"Tapped");
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://lerakravets.github.io/rsschool-cv/cv"] options:@{} completionHandler:nil];
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}



@end
