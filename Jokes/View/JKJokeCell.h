//
//  JKJokeCell.h
//  Jokes
//
//  Created by lujun on 2022/2/10.
//

#import <UIKit/UIKit.h>
#import "JKJokeModel.h"

NS_ASSUME_NONNULL_BEGIN



@protocol JokeCellActionsDelegate <NSObject>

@optional
- (void)showJokeImageAction:(JKJokeModel *)jokeModel;
- (void)showCommentAction:(JKJokeModel *)jokeModel;

@end

@interface JKJokeCell : UITableViewCell

@property (nonatomic, weak) id<JokeCellActionsDelegate> delegate;

- (void)initCellWithJokeModel:(JKJokeModel *)jokeModel;

+ (CGFloat)cellHeightWithJokeModel:(JKJokeModel *)jokeModel;

@end


NS_ASSUME_NONNULL_END
