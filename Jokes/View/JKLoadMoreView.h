//
//  JKLoadMoreView.h
//  Jokes
//
//  Created by lujun on 2022/2/10.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol LoadMoreDelegate <NSObject>

@optional;
- (void)loadMore;

@end

@interface JKLoadMoreView : UIView

@property (nonatomic, weak) id<LoadMoreDelegate> delegate;

- (void)stopLoadMore;

@end
NS_ASSUME_NONNULL_END
