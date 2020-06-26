//
//  TaskCell.h
//  Task6
//
//  Created by Лера on 6/25/20.
//  Copyright © 2020 com.vkravets. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <sys/utsname.h>

NS_ASSUME_NONNULL_BEGIN

@interface TaskCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *appleImage;
@property(nonatomic, strong) IBOutlet UIButton *cVButton;
@property(nonatomic, strong) IBOutlet UIButton *backButton;
@property(nonatomic, strong) UIView *cellView;
@property(nonatomic, strong) IBOutlet UILabel *deviseNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *deviseModelLabel;
@property (weak, nonatomic) IBOutlet UILabel *deviseSystemLabel;
@property (weak, nonatomic) IBOutlet UIImageView *firstBorderImage;
@property (weak, nonatomic) IBOutlet UIImageView *secondBorderImage;


- (void)configure;
@end

NS_ASSUME_NONNULL_END
