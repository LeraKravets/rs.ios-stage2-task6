//
//  GalleryViewController.m
//  Task6
//
//  Created by Лера on 6/23/20.
//  Copyright © 2020 com.vkravets. All rights reserved.
//

#import "GalleryViewController.h"
#import "UIColor+ColorPalette.h"
#import <Photos/Photos.h>

@interface GalleryViewController ()
@property (nonatomic, strong) PHFetchResult<PHAsset *> *assets;
@property (nonatomic, strong) UICollectionView *galleryCollectionView;
@end

@implementation GalleryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.navigationController.navigationBar.barTintColor = UIColor.customYellow;
    [self.navigationItem setTitle: @"Gallery"];
    self.assets = [PHAsset fetchAssetsWithOptions:nil];
}

-(BOOL)prefersStatusBarHidden{
    return YES;
}

@end
