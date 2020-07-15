//
//  InfoCellViewModel.m
//  Task6
//
//  Created by Лера on 7/12/20.
//  Copyright © 2020 com.vkravets. All rights reserved.
//

#import "InfoCellViewModel.h"
#import <Photos/Photos.h>

@implementation InfoCellViewModel
- (id)initWithAsset:(PHAsset *)asset {
     if (self = [super init]) {
         self.asset = asset;
     }
     return self;
}
@end
