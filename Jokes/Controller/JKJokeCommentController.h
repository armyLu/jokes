//
//  JKJokeCommentController.h
//  Jokes
//
//  Created by lujun on 2022/2/10.
//

#import <UIKit/UIKit.h>
#import "JKJokeModel.h"
#import "JKLoadMoreView.h"

NS_ASSUME_NONNULL_BEGIN



@interface JKJokeCommentController : UITableViewController <LoadMoreDelegate>

@property (nonatomic, strong) JKJokeModel * jokeModel;

@end


NS_ASSUME_NONNULL_END
