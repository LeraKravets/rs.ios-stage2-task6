//
//  InfoCell.h
//  Task6
//
//  Created by Лера on 6/25/20.
//  Copyright © 2020 com.vkravets. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Photos/Photos.h>

NS_ASSUME_NONNULL_BEGIN

@interface InfoCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *mediaImageView;
@property (weak, nonatomic) IBOutlet UILabel *mediaNameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *mediaTypeImageView;
@property (weak, nonatomic) IBOutlet UILabel *mediaSizeLabel;

- (void)setupMedia:(PHAsset *)asset;
@end

NS_ASSUME_NONNULL_END
