//
//  FileDataViewController.m
//  Task6
//
//  Created by Лера on 7/12/20.
//  Copyright © 2020 com.vkravets. All rights reserved.
//

#import "FileDataViewController.h"
#import "UIColor+ColorPalette.h"
#import <Photos/Photos.h>

@interface FileDataViewController ()
@property (strong, nonatomic) PHAsset *asset;
@property (nonatomic, strong) UIImageView *fileImage;
@property(nonatomic, strong) UIScrollView *fileDataScrollView;
@property(nonatomic, strong) UILabel *creationDateLabel;
@property(nonatomic, strong) UILabel *modificationDateLabel;
@property(nonatomic, strong) UILabel *typeLabel;
@end

@implementation FileDataViewController

- (id) initWithAsset: (PHAsset *)asset {
    if (self = [super init]) {
        self.asset = asset;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *navigationItemText = [NSString stringWithFormat:@"%f, %lu x %lu", self.asset.duration, (unsigned long)self.asset.pixelHeight, (unsigned long)self.asset.pixelWidth];
    [self.navigationItem setTitle: navigationItemText];



    self.navigationItem.backBarButtonItem.title = @"";
    self.navigationItem.backBarButtonItem.tintColor = UIColor.customBlack;
    self.view.backgroundColor = UIColor.customWhite;
    [self setupScrollView];
    [self setupFileImage];

}

- (void)viewWillAppear:(BOOL)animated {
    [self.tabBarController.tabBar setHidden:YES];
}

-(void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.tabBarController.tabBar setHidden:NO];
}

- (void) setupScrollView {
    self.fileDataScrollView = [UIScrollView new];
    [self.fileDataScrollView setShowsVerticalScrollIndicator:YES];
    self.fileDataScrollView.scrollEnabled = NO;
    self.fileDataScrollView.backgroundColor = UIColor.customWhite;
    self.fileDataScrollView.contentSize = self.view.bounds.size;
    [self.view addSubview:self.fileDataScrollView];

    self.fileDataScrollView.translatesAutoresizingMaskIntoConstraints = NO;
       [NSLayoutConstraint activateConstraints:@[
           [self.fileDataScrollView.leadingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.leadingAnchor],
           [self.fileDataScrollView.trailingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.trailingAnchor],
           [self.fileDataScrollView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor],
           [self.fileDataScrollView.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor]
       ]];
}

-(void)setupFileImage {
    self.fileImage = [UIImageView new];
    [self setImageFromAsset];
    [self.fileImage setContentMode:UIViewContentModeScaleAspectFit];
    [self.fileDataScrollView addSubview:self.fileImage];

    self.fileImage.translatesAutoresizingMaskIntoConstraints = NO;

    [[NSLayoutConstraint constraintWithItem:self.fileImage attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.fileDataScrollView attribute:NSLayoutAttributeTop multiplier:1 constant: 15] setActive:YES];

    [[NSLayoutConstraint constraintWithItem:self.fileImage attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.fileDataScrollView attribute:NSLayoutAttributeCenterX multiplier:1 constant:0] setActive:YES];

    [[NSLayoutConstraint constraintWithItem:self.fileImage attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.fileDataScrollView attribute:NSLayoutAttributeLeading multiplier:1 constant:15] setActive:YES];

    [[NSLayoutConstraint constraintWithItem:self.fileImage attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.fileDataScrollView attribute:NSLayoutAttributeTrailing multiplier:1 constant:-15] setActive:YES];

    [[NSLayoutConstraint constraintWithItem:self.fileImage attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.fileImage attribute:NSLayoutAttributeWidth multiplier:1 constant:0] setActive:YES];
}

-(void)setImageFromAsset {
    PHImageManager *manager = [PHImageManager defaultManager];
    [manager requestImageForAsset:self.asset
                       targetSize:PHImageManagerMaximumSize
                      contentMode:PHImageContentModeDefault
                          options:nil
                    resultHandler:^void(UIImage *image, NSDictionary *info) {
        [self.fileImage setImage:image];
    }];
}

@end
