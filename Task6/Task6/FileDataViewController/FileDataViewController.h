//
//  FileDataViewController.h
//  Task6
//
//  Created by Лера on 7/12/20.
//  Copyright © 2020 com.vkravets. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Photos/Photos.h>

NS_ASSUME_NONNULL_BEGIN

@interface FileDataViewController : UIViewController
- (id) initWithAsset: (PHAsset *)asset;
@end

NS_ASSUME_NONNULL_END
