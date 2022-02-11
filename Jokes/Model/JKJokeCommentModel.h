//
//  JKJokeCommentModel.h
//  Jokes
//
//  Created by lujun on 2022/2/10.
//

#import <Foundation/Foundation.h>
#import "JKUserModel.h"

NS_ASSUME_NONNULL_BEGIN



@interface JKJokeCommentModel : NSObject

@property (nonatomic, strong) JKUserModel * user;
@property (nonatomic, strong) NSString * content;
@property (nonatomic, assign) NSInteger floor;
@property (nonatomic, strong) NSString * commentID;

+ (NSArray *)commentArrayWithData:(NSArray *)data;

@end


NS_ASSUME_NONNULL_END
