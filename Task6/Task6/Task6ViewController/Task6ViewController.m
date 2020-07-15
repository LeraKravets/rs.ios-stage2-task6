//
//  Task6ViewController.m
//  Task6
//
//  Created by Лера on 6/23/20.
//  Copyright © 2020 com.vkravets. All rights reserved.
//

#import "Task6ViewController.h"
#import "UIColor+ColorPalette.h"
#import "TaskCell.h"
#import "AppDelegate.h"
#import "StartViewController.h"

@interface Task6ViewController ()

//@property(nonatomic, strong)UITableView *task6TableView;
@property(nonatomic, strong) UIScrollView *task6ScrollView;
@property (nonatomic, strong) UIImageView *appleImage;
@property(nonatomic, strong) UIButton *cVButton;
@property(nonatomic, strong) UIButton *backButton;
@property(nonatomic, strong) UIStackView *stackView;
@property (weak, nonatomic) UIImageView *firstSeparatorImage;
@property (weak, nonatomic) UIImageView *secondSeparatorImage;
@end

@implementation Task6ViewController

int const BUTTON_HEIGH1 = 55;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"RSSchool Task 6";
    [self setupScrollView];
    [self setupAppleImage];
    [self setupStackView];
    [self setupCVButtom];
    [self setupBackButtom];
}

-(BOOL)prefersStatusBarHidden{
    return YES;
}

- (void)setupScrollView {
//    self.task6ScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    self.task6ScrollView = [UIScrollView new];
    [self.task6ScrollView setShowsVerticalScrollIndicator:YES];
    self.task6ScrollView.scrollEnabled = YES;
    self.task6ScrollView.backgroundColor = UIColor.customWhite;
    self.task6ScrollView.contentSize = self.view.bounds.size;
    [self.view addSubview:self.task6ScrollView];

    self.task6ScrollView.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
        [self.task6ScrollView.leadingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.leadingAnchor],
        [self.task6ScrollView.trailingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.trailingAnchor],
        [self.task6ScrollView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor],
        [self.task6ScrollView.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor]
    ]];
}

-(void)setupAppleImage {
    self.appleImage = [[UIImageView alloc] initWithFrame:CGRectMake(40, 40, 90, 90)];
    [self.appleImage setImage:[UIImage imageNamed:@"apple"]];
    [self.appleImage setContentMode:UIViewContentModeScaleAspectFit];
    [self.task6ScrollView addSubview:self.appleImage];
}

- (void)setupStackView {
    UILabel *deviseNameLabel = [UILabel new];
    UILabel *deviseModelLabel = [UILabel new];
    UILabel *deviseSystemLabel = [UILabel new];

    deviseNameLabel.font = [UIFont systemFontOfSize:18 weight:UIFontWeightMedium];
    deviseModelLabel.font = [UIFont systemFontOfSize:18 weight:UIFontWeightMedium];
    deviseSystemLabel.font = [UIFont systemFontOfSize:18 weight:UIFontWeightMedium];

    deviseNameLabel.textColor = UIColor.customBlack;
    deviseModelLabel.textColor = UIColor.customBlack;
    deviseSystemLabel.textColor = UIColor.customBlack;

    [deviseNameLabel setText:UIDevice.currentDevice.name];
    [deviseModelLabel setText:UIDevice.currentDevice.model];
    deviseSystemLabel.text = [NSString stringWithFormat:@"%@ %@", [UIDevice currentDevice].systemName, [UIDevice currentDevice].systemVersion];

    self.stackView = [[UIStackView alloc] initWithArrangedSubviews:@[deviseNameLabel, deviseModelLabel, deviseSystemLabel]];
    self.stackView.axis = UILayoutConstraintAxisVertical;
    self.stackView.distribution = UIStackViewDistributionFillEqually;
    self.stackView.alignment = UIStackViewAlignmentLeading;
    self.stackView.spacing = 10;
    self.stackView.translatesAutoresizingMaskIntoConstraints = NO;

    [self.task6ScrollView addSubview:self.stackView];

    [[NSLayoutConstraint constraintWithItem:self.stackView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.task6ScrollView attribute:NSLayoutAttributeTop multiplier:1 constant:self.appleImage.frame.origin.y] setActive:YES];

    [[NSLayoutConstraint constraintWithItem:self.stackView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.appleImage attribute:NSLayoutAttributeTrailing multiplier:1 constant:20] setActive:YES];


    [[NSLayoutConstraint constraintWithItem:self.stackView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.task6ScrollView attribute:NSLayoutAttributeRight multiplier:1 constant:-40] setActive:YES];

    [[NSLayoutConstraint constraintWithItem:self.stackView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.appleImage attribute:NSLayoutAttributeHeight multiplier:1 constant:0] setActive:YES];
}

- (void)setupCVButtom {
    self.cVButton = [UIButton new];
    self.cVButton.backgroundColor = UIColor.customYellow;
    self.cVButton.titleLabel.font = [UIFont systemFontOfSize:20 weight:UIFontWeightMedium];
    [self.cVButton setTitle:@"Open Git CV" forState:UIControlStateNormal];
    [self.cVButton setTitleColor: UIColor.customBlack forState:UIControlStateNormal];
    self.cVButton.layer.cornerRadius = BUTTON_HEIGH1/2;
    [self.task6ScrollView addSubview:self.cVButton];

    [self.cVButton addTarget:self
                         action:@selector(selectorCVButtonTapped:)
               forControlEvents:UIControlEventTouchUpInside];

    self.cVButton.translatesAutoresizingMaskIntoConstraints = NO;
    [[NSLayoutConstraint constraintWithItem:self.cVButton attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.appleImage attribute:NSLayoutAttributeBottom multiplier:1 constant:300] setActive:YES];

    [[NSLayoutConstraint constraintWithItem:self.cVButton attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:BUTTON_HEIGH1] setActive:YES];

    [[NSLayoutConstraint constraintWithItem:self.cVButton attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:300] setActive:YES];

    [[NSLayoutConstraint constraintWithItem:self.cVButton attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.task6ScrollView attribute:NSLayoutAttributeCenterX multiplier:1 constant:0] setActive:YES];
}

- (void)setupBackButtom {
    self.backButton = [UIButton new];
    self.backButton.backgroundColor = UIColor.customRed;
    self.backButton.titleLabel.font = [UIFont systemFontOfSize:20 weight:UIFontWeightMedium];
    [self.backButton setTitle:@"Go to Start!" forState:UIControlStateNormal];
    [self.backButton setTitleColor: UIColor.customWhite forState:UIControlStateNormal];
    self.backButton.layer.cornerRadius = BUTTON_HEIGH1/2;
    [self.task6ScrollView addSubview:self.backButton];

    self.backButton.translatesAutoresizingMaskIntoConstraints = NO;
    [[NSLayoutConstraint constraintWithItem:self.backButton attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.cVButton attribute:NSLayoutAttributeBottom multiplier:1 constant:5] setActive:YES];

    [[NSLayoutConstraint constraintWithItem:self.backButton attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:BUTTON_HEIGH1] setActive:YES];

    [[NSLayoutConstraint constraintWithItem:self.backButton attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:300] setActive:YES];

    [[NSLayoutConstraint constraintWithItem:self.backButton attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.task6ScrollView attribute:NSLayoutAttributeCenterX multiplier:1 constant:0] setActive:YES];

    [self.backButton addTarget:self
                        action:@selector(selectorBackButtonTapped:)
              forControlEvents:UIControlEventTouchUpInside];
}

- (void)selectorCVButtonTapped: (UIButton *)sender {
    NSLog(@"Tapped");
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://lerakravets.github.io/rsschool-cv/cv"] options:@{} completionHandler:nil];
}

- (void)selectorBackButtonTapped: (UIButton *)sender {
    NSLog(@"Tapped");
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    appDelegate.window.rootViewController = [StartViewController new];
    [appDelegate.window makeKeyAndVisible];
}

@end
