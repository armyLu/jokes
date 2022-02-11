//
//  JKShowImageView.h
//  Jokes
//
//  Created by lujun on 2022/2/10.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JKShowImageView : UIScrollView <UIScrollViewDelegate>

+ (void)showWithImageURL:(NSString *)imageURL;

@end

NS_ASSUME_NONNULL_END
