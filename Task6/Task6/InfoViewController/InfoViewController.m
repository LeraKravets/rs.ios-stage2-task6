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

@interface InfoViewController ()
@property (nonatomic, strong) PHFetchResult<PHAsset *> *assets;
@property (nonatomic, strong) UITableView *infoTableView;
@end

@implementation InfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.navigationController.navigationBar.barTintColor = UIColor.customYellow;
    [self.navigationItem setTitle: @"Info"];
    [self setupTableView];
    self.assets = [PHAsset fetchAssetsWithOptions:nil];
}

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
    self.infoTableView.translatesAutoresizingMaskIntoConstraints = false;
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
    [cell setupMedia:self.assets[indexPath.row]];
    cell.backgroundColor = UIColor.customWhite;
    cell.mediaNameLabel.textColor = UIColor.customBlack;
    cell.mediaSizeLabel.textColor = UIColor.customBlack;
    return cell;
}

@end
