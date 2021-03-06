//
//  InfoCell.m
//  Task6
//
//  Created by Лера on 6/25/20.
//  Copyright © 2020 com.vkravets. All rights reserved.
//

#import "InfoCell.h"
#import <Photos/Photos.h>
#import "InfoCellViewModel.h"

@implementation InfoCell

- (void)setupMedia:(InfoCellViewModel *) viewModel {
    switch (viewModel.asset.mediaType) {
        case PHAssetMediaTypeAudio:
            [self.mediaTypeImageView setImage:[UIImage imageNamed:@"music"]];
            [self.mediaImageView setImage:[UIImage imageNamed:@"music"]];
            [self.mediaSizeLabel setText: [NSString stringWithFormat:@"%f", viewModel.asset.duration]];
            break;

        case PHAssetMediaTypeVideo:
            [self.mediaTypeImageView setImage:[UIImage imageNamed:@"video"]];
            [self setImageFor:viewModel.asset];
            [self.mediaSizeLabel setText: [NSString stringWithFormat:@"%f, %lu x %lu", viewModel.asset.duration, (unsigned long)viewModel.asset.pixelHeight, (unsigned long)viewModel.asset.pixelWidth]];
            break;

        case PHAssetMediaTypeImage:
            [self.mediaTypeImageView setImage:[UIImage imageNamed:@"image"]];
            [self setImageFor:viewModel.asset];
            [self.mediaSizeLabel setText: [NSString stringWithFormat:@"%lu x %lu", (unsigned long)viewModel.asset.pixelHeight, (unsigned long)viewModel.asset.pixelWidth]];
            break;

        default:
            [self.mediaTypeImageView setImage:[UIImage imageNamed:@"other"]];
            [self.mediaImageView setImage:[UIImage imageNamed:@"forbidden"]];
            break;
    }
    NSArray<PHAssetResource *> *resources = [PHAssetResource assetResourcesForAsset:viewModel.asset];
    NSString *fileName = [resources.firstObject originalFilename];
    [self.mediaNameLabel setText:fileName];
}

-(void)setImageFor:(PHAsset *)asset {
    PHImageManager *manager = [PHImageManager defaultManager];
    [manager requestImageForAsset:asset
                       targetSize:PHImageManagerMaximumSize
                      contentMode:PHImageContentModeDefault
                          options:nil
                    resultHandler:^void(UIImage *image, NSDictionary *info) {
        [self.mediaImageView setImage:image];
    }];
}

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

@end
