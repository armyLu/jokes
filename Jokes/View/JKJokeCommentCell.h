//
//  JKJokeCommentCell.h
//  Jokes
//
//  Created by lujun on 2022/2/10.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "JKJokeCommentModel.h"


NS_ASSUME_NONNULL_BEGIN

@interface JKJokeCommentCell : UITableViewCell

- (void)initCellWithJokeCommentModel:(JKJokeCommentModel *)jokeCommentModel;
+ (CGFloat)cellHeightWithJokeModel:(JKJokeCommentModel *)jokeCommentModel;

@end

NS_ASSUME_NONNULL_END
