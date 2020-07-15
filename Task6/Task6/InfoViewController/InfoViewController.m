//
//  InfoViewController.m
//  Task6
//
//  Created by Лера on 6/23/20.
//  Copyright © 2020 com.vkravets. All rights reserved.
//

#import "InfoViewController.h"
#import "UIColor+ColorPalette.h"
#import <Photos/Photos.h>
#import "InfoCell.h"
#import "InfoCellViewModel.h"
#import "FileDataViewController.h"
#import "AppDelegate.h"

@interface InfoViewController ()
@property (nonatomic, strong) PHFetchResult<PHAsset *> *assets;
@property (nonatomic, strong) UITableView *infoTableView;
@end

@implementation InfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.navigationController.navigationBar.barTintColor = UIColor.customYellow;
    [self.navigationItem setTitle: @"Info"];
    self.view.backgroundColor = UIColor.customWhite;
//    [[NSNotificationCenter defaultCenter] addObserver:self
//                                             selector:@selector(applicationIsActive:)
//                                                 name:UIApplicationDidBecomeActiveNotification
//                                               object:nil];
    PHFetchOptions *fetchOptions = [[PHFetchOptions alloc] init];
    fetchOptions.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:NO]];
    self.assets = [PHAsset fetchAssetsWithOptions:fetchOptions];
    [self setupTableView];
}


//- (void)applicationIsActive:(NSNotification *)notification {
//    PHFetchOptions *fetchOptions = [[PHFetchOptions alloc] init];
//    fetchOptions.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:NO]];
//    self.assets = [PHAsset fetchAssetsWithOptions:fetchOptions];
//    [self setupTableView];
//}

-(BOOL)prefersStatusBarHidden{
    return YES;
}

- (void)setupTableView {
    self.infoTableView = [UITableView new];
    self.infoTableView.backgroundColor = UIColor.customWhite;
    self.infoTableView.delegate = self;
    self.infoTableView.dataSource = self;
    [self.infoTableView setRowHeight:100];
    [self.view addSubview:self.infoTableView];
    self.infoTableView.translatesAutoresizingMaskIntoConstraints = NO;
        [NSLayoutConstraint activateConstraints:@[
            [self.infoTableView.leadingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.leadingAnchor],
            [self.infoTableView.trailingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.trailingAnchor],
            [self.infoTableView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor],
            [self.infoTableView.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor]
        ]];
    [self.infoTableView registerNib:[UINib nibWithNibName:@"InfoCell" bundle:NSBundle.mainBundle] forCellReuseIdentifier:@"InfoCell"];
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.assets.count;;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    InfoCell *cell = [tableView dequeueReusableCellWithIdentifier:@"InfoCell"];
    InfoCellViewModel *infoCellViewModel = [[InfoCellViewModel alloc] initWithAsset:self.assets[indexPath.row]];
    [cell setupMedia:infoCellViewModel];
    cell.backgroundColor = UIColor.customWhite;
    cell.mediaNameLabel.textColor = UIColor.customBlack;
    cell.mediaSizeLabel.textColor = UIColor.customBlack;
    UIView *bgColorView = [[UIView alloc] init];
    bgColorView.backgroundColor = [UIColor customYellow];
    [cell setSelectedBackgroundView:bgColorView];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    FileDataViewController *fileDataVC = [[FileDataViewController alloc] initWithAsset:self.assets[indexPath.row]];
    [self.navigationController pushViewController:fileDataVC animated:YES];
    [self.infoTableView deselectRowAtIndexPath:indexPath animated:YES];
}
@end
