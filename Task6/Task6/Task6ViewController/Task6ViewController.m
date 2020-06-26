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

@property(nonatomic, strong)UITableView *task6TableView;

@end

@implementation Task6ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"RSSchool Task 6";
    [self setupTableView];
}

-(BOOL)prefersStatusBarHidden{
    return YES;
}

- (void)setupTableView {
    self.task6TableView = [UITableView new];
    self.task6TableView.translatesAutoresizingMaskIntoConstraints = false;
    self.task6TableView.delegate = self;
    self.task6TableView.dataSource = self;
    [self.task6TableView setRowHeight:self.view.bounds.size.height - self.navigationController.navigationBar.bounds.size.height - self.tabBarController.tabBar.bounds.size.height];
    self.task6TableView.backgroundColor = UIColor.customWhite;
    [self.view addSubview:self.task6TableView];
        [NSLayoutConstraint activateConstraints:@[
            [self.task6TableView.leadingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.leadingAnchor],
            [self.task6TableView.trailingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.trailingAnchor],
            [self.task6TableView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor],
            [self.task6TableView.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor]
        ]];
    [self.task6TableView registerNib:[UINib nibWithNibName:@"TaskCell" bundle:nil] forCellReuseIdentifier:@"TaskCell"];
}
- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TaskCell *taskCell = [tableView dequeueReusableCellWithIdentifier:@"TaskCell"];
    taskCell.backgroundColor = UIColor.customWhite;
    taskCell.userInteractionEnabled = NO;
    taskCell.configure;

     [taskCell.cVButton addTarget:self
               action:@selector(selectorCVButtonTapped:)
     forControlEvents:UIControlEventTouchUpInside];

    [taskCell.backButton addTarget:self
                           action:@selector(selectorBackButtonTapped:)
                 forControlEvents:UIControlEventTouchUpInside];

    return taskCell;
}
//
//- (void)selectorCVButtonTapped: (UIButton *)sender {
//    NSLog(@"Tapped");
//    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://lerakravets.github.io/rsschool-cv/cv"] options:@{} completionHandler:nil];
//}
//
//
//- (void)selectorBackButtonTapped: (UIButton *)sender {
//    NSLog(@"Tapped");
//    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
//    appDelegate.window.rootViewController = [StartViewController new];
//    [appDelegate.window makeKeyAndVisible];
//}




@end
