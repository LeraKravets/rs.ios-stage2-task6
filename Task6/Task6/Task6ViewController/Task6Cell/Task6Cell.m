////
////  Task6Cell.m
////  Task6
////
////  Created by Лера on 6/25/20.
////  Copyright © 2020 com.vkravets. All rights reserved.
////
//
//#import "Task6Cell.h"
//#import "UIColor+ColorPalette.h"
//#import "AppDelegate.h"
//
//@implementation Task6Cell
//
////int const BUTTON_HEIGH = 55;
//
//- (void)awakeFromNib {
//    [super awakeFromNib];
//    [self createCell];
//    [self setupBackButtom];
//    [self setupMyPhoneLabel];
//}
//
//-(void)createCell {
//    self.cellView = [UIView new];
//    [self.cellView setBackgroundColor:UIColor.customWhite];
//    [self setSelectedBackgroundView: self.cellView];
//}
//
//- (void)setupMyPhoneLabel {
//    self.myPhoneLabel = [UILabel new];
//    self.myPhoneLabel.font = [UIFont systemFontOfSize:24 weight:UIFontWeightMedium];
//    self.myPhoneLabel.text = @"My iPhone";
//    self.myPhoneLabel.textAlignment = NSTextAlignmentCenter;
//    [self.cellView addSubview: self.myPhoneLabel];
//    self.myPhoneLabel.translatesAutoresizingMaskIntoConstraints = NO;
//
//    NSLayoutConstraint *constraint1 = [NSLayoutConstraint constraintWithItem:self.myPhoneLabel
//                                                                  attribute:NSLayoutAttributeTop
//                                                                  relatedBy:NSLayoutRelationEqual
//                                                                      toItem:self.cellView
//                                                                  attribute:NSLayoutAttributeTop
//                                                                 multiplier:1
//                                                                   constant:150];
//
//    NSLayoutConstraint *constraint2 = [NSLayoutConstraint constraintWithItem:self.myPhoneLabel
//                                                                  attribute:NSLayoutAttributeCenterX
//                                                                   relatedBy:NSLayoutRelationEqual
//                                                                      toItem:self.cellView
//                                                                   attribute:NSLayoutAttributeCenterX
//                                                                  multiplier:1
//                                                                    constant:0];
//    [constraint1 setActive:true];
//    [constraint2 setActive:true];
//
//
//    //    [NSLayoutConstraint activateConstraints:@[
//    //        [self.readyLabel.leadingAnchor constraintEqualToAnchor:self.mainView.safeAreaLayoutGuide.leadingAnchor constant: 10],
//    //        [self.readyLabel.trailingAnchor constraintEqualToAnchor:self.mainView.safeAreaLayoutGuide.trailingAnchor constant: -10],
//    //        [self.readyLabel.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant: 120],
//    //        [self.readyLabel.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor constant: -600]
//    //    ]];
//}
//
//- (void)setupBackButtom {
//    self.backButton = [UIButton new];
//    self.backButton.backgroundColor = UIColor.customYellow;
//    self.backButton.titleLabel.font = [UIFont systemFontOfSize:20 weight:UIFontWeightMedium];
//    [self.backButton setTitle:@"START" forState:UIControlStateNormal];
//    [self.backButton setTitleColor: UIColor.customBlack forState:UIControlStateNormal];
//    self.backButton.layer.cornerRadius = BUTTON_HEIGH/2;
////        [self.startButtom sizeToFit];
//
//
//    [self.backButton addTarget:self
//                         action:@selector(selectorBackButtonTapped:)
//               forControlEvents:UIControlEventTouchUpInside];
//
//    [self.cellView addSubview: self.backButton];
//    self.backButton.translatesAutoresizingMaskIntoConstraints = NO;
//
//    NSLayoutConstraint *constraint1 = [NSLayoutConstraint constraintWithItem:self.backButton
//                                                                   attribute:NSLayoutAttributeTop
//                                                                   relatedBy:NSLayoutRelationEqual
//                                                                      toItem:self.cellView
//                                                                   attribute:NSLayoutAttributeTop
//                                                                  multiplier:1
//                                                                    constant: 500];
//
//    NSLayoutConstraint *constraint2 = [NSLayoutConstraint constraintWithItem:self.backButton
//                                                                   attribute:NSLayoutAttributeHeight
//                                                                   relatedBy:NSLayoutRelationEqual
//                                                                      toItem:nil
//                                                                   attribute:NSLayoutAttributeNotAnAttribute
//                                                                  multiplier:1
//                                                                    constant:BUTTON_HEIGH];
//
//    NSLayoutConstraint *constraint3 = [NSLayoutConstraint constraintWithItem:self.backButton
//                                                                   attribute:NSLayoutAttributeWidth
//                                                                   relatedBy:NSLayoutRelationEqual
//                                                                      toItem:nil
//                                                                   attribute:NSLayoutAttributeNotAnAttribute
//                                                                  multiplier:1
//                                                                    constant:300];
//
//    NSLayoutConstraint *constraint4 = [NSLayoutConstraint constraintWithItem:self.backButton
//                                                                   attribute:NSLayoutAttributeCenterX
//                                                                   relatedBy:NSLayoutRelationEqual
//                                                                      toItem:self.cellView
//                                                                   attribute:NSLayoutAttributeCenterX
//                                                                  multiplier:1
//                                                                    constant:0];
//
//    [constraint1 setActive:true];
//    [constraint2 setActive:true];
//    [constraint3 setActive:true];
//    [constraint4 setActive:true];
//}
//- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
//    [super setSelected:selected animated:animated];
//
//    // Configure the view for the selected state
//}
//- (void)selectorBackButtonTapped: (UIButton *)sender {
//    NSLog(@"Tapped");
////    AppDelegate *appDelege = [[UIApplication sharedApplication] delegate];
////    [appDelege s];
//}
//
//@end
