//
//  StartViewController.m
//  Task6
//
//  Created by Лера on 6/22/20.
//  Copyright © 2020 com.vkravets. All rights reserved.
//

#import "StartViewController.h"
#import "UIColor+ColorPalette.h"
#import "AppDelegate.h"

int const BUTTON_HEIGHT = 55;

@interface StartViewController ()

@property(nonatomic, strong)UIView *mainView;
@property(nonatomic, strong)UILabel *readyLabel;
@property(nonatomic, strong)UIButton *startButtom;
@end

@implementation StartViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setupView];
    [self addLabel];
    [self setupButtom];
}

-(BOOL)prefersStatusBarHidden{
    return YES;
}

- (void)setupView {
//    self.mainView = [[UIView alloc] initWithFrame:self.view.bounds];
    self.mainView = [[UIView alloc] init];
    self.mainView.translatesAutoresizingMaskIntoConstraints = false;
    self.mainView.backgroundColor = UIColor.customWhite;
    [self.view addSubview: self.mainView];

    [NSLayoutConstraint activateConstraints:@[
        [self.mainView.leadingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.leadingAnchor],
        [self.mainView.trailingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.trailingAnchor],
        [self.mainView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor],
        [self.mainView.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor]
    ]];

}
- (void)addLabel {
    self.readyLabel = [UILabel new];
    self.readyLabel.font = [UIFont systemFontOfSize:24 weight:UIFontWeightMedium];
    self.readyLabel.text = @"Are you ready?";
    self.readyLabel.textColor = UIColor.customBlack;
    self.readyLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview: self.readyLabel];
    self.readyLabel.translatesAutoresizingMaskIntoConstraints = false;

    NSLayoutConstraint *constraint1 = [NSLayoutConstraint constraintWithItem:self.readyLabel
                                                                  attribute:NSLayoutAttributeTop
                                                                  relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.mainView
                                                                  attribute:NSLayoutAttributeTop
                                                                 multiplier:1
                                                                   constant:150];

    NSLayoutConstraint *constraint2 = [NSLayoutConstraint constraintWithItem:self.readyLabel
                                                                  attribute:NSLayoutAttributeCenterX
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.mainView
                                                                   attribute:NSLayoutAttributeCenterX
                                                                  multiplier:1
                                                                    constant:0];
    [constraint1 setActive:true];
    [constraint2 setActive:true];


    //    [NSLayoutConstraint activateConstraints:@[
    //        [self.readyLabel.leadingAnchor constraintEqualToAnchor:self.mainView.safeAreaLayoutGuide.leadingAnchor constant: 10],
    //        [self.readyLabel.trailingAnchor constraintEqualToAnchor:self.mainView.safeAreaLayoutGuide.trailingAnchor constant: -10],
    //        [self.readyLabel.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant: 120],
    //        [self.readyLabel.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor constant: -600]
    //    ]];
}

- (void)setupButtom {
    self.startButtom = [UIButton new];
    self.startButtom.backgroundColor = UIColor.customYellow;
    self.startButtom.titleLabel.font = [UIFont systemFontOfSize:20 weight:UIFontWeightMedium];
    [self.startButtom setTitle:@"START" forState:UIControlStateNormal];
    [self.startButtom setTitleColor: UIColor.customBlack forState:UIControlStateNormal];
    self.startButtom.layer.cornerRadius = BUTTON_HEIGHT/2;
//        [self.startButtom sizeToFit];


    [self.startButtom addTarget:self
                         action:@selector(selectorstartButtonTapped:)
               forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview: self.startButtom];
    self.startButtom.translatesAutoresizingMaskIntoConstraints = false;

    NSLayoutConstraint *constraint1 = [NSLayoutConstraint constraintWithItem:self.startButtom
                                                                   attribute:NSLayoutAttributeBottom
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.readyLabel
                                                                   attribute:NSLayoutAttributeTop
                                                                  multiplier:1
                                                                    constant:400];

    NSLayoutConstraint *constraint2 = [NSLayoutConstraint constraintWithItem:self.startButtom
                                                                   attribute:NSLayoutAttributeHeight
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:nil
                                                                   attribute:NSLayoutAttributeNotAnAttribute
                                                                  multiplier:1
                                                                    constant:BUTTON_HEIGHT];

    NSLayoutConstraint *constraint3 = [NSLayoutConstraint constraintWithItem:self.startButtom
                                                                   attribute:NSLayoutAttributeWidth
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:nil
                                                                   attribute:NSLayoutAttributeNotAnAttribute
                                                                  multiplier:1
                                                                    constant:300];

    NSLayoutConstraint *constraint4 = [NSLayoutConstraint constraintWithItem:self.startButtom
                                                                   attribute:NSLayoutAttributeCenterX
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.readyLabel
                                                                   attribute:NSLayoutAttributeCenterX
                                                                  multiplier:1
                                                                    constant:0];

    [constraint1 setActive:true];
    [constraint2 setActive:true];
    [constraint3 setActive:true];
    [constraint4 setActive:true];
}

- (void)selectorstartButtonTapped: (UIButton *)sender {
    NSLog(@"Tapped");
    
//    AppDelegate *appDelege = [[UIApplication sharedApplication] delegate];
//    if (appDelege.window != nil) {
//        Transition.sha
//    }

    AppDelegate *appDelege = [[UIApplication sharedApplication] delegate];
    [appDelege rootViewController];
}

@end
