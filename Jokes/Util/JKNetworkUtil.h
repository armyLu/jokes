//
//  JKNetworkUtil.h
//  Jokes
//
//  Created by lujun on 2022/2/10.
//
#import <Foundation/Foundation.h>
#import "JKViewControllerUtil.h"
NS_ASSUME_NONNULL_BEGIN
@interface JKNetworkUtil : NSObject

+ (void)requestJokeWithJokeType:(JokeType)jokeType pageNo:(NSInteger)pageNo success:(void (^)(NSDictionary * jsonData))success failure:(void (^)())failure;
+ (void)requestJokeCommentWithJokeID:(NSString *)jokeID pageNo:(NSInteger)pageNo success:(void (^)(NSDictionary * jsonData))success failure:(void (^)())failure;

@end


NS_ASSUME_NONNULL_END
