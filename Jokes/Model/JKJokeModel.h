//
//  JKJokeModel.h
//  Jokes
//
//  Created by lujun on 2022/2/10.
//

#import <Foundation/Foundation.h>
#import "JKUserModel.h"

NS_ASSUME_NONNULL_BEGIN




typedef struct {
    long up;
    long down;
} Votes;


@interface JKJokeModel : NSObject

@property (nonatomic, assign) BOOL allowComment;
@property (nonatomic, assign) long commentCount;
@property (nonatomic, strong) NSString * content;
@property (nonatomic, assign) long long createAt;
@property (nonatomic, strong) NSString * jokeID;
@property (nonatomic, strong) NSString * image;
@property (nonatomic, assign) long long publishAt;
@property (nonatomic, strong) NSString * state;
//@property (nonatomic, strong) NSString * tag;
//@property (nonatomic, assign) imageSize;
@property (nonatomic, strong) JKUserModel * user;
@property (nonatomic, assign) Votes votes;
@property(nonatomic,copy)NSString * pic_url;



+ (NSArray *)jokeArrayWithData:(NSArray *)data;

- (NSString *)smallImageURL;
- (NSString *)largeImageURL;
-(NSString *)publishedAtTime;
@end


NS_ASSUME_NONNULL_END
