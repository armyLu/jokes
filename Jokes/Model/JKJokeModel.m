//
//  JKJokeModel.m
//  Jokes
//
//  Created by lujun on 2022/2/10.
//

#import "JKJokeModel.h"
#import "NSDictionary+Util.h"


@implementation JKJokeModel

+ (NSArray *)jokeArrayWithData:(NSArray *)data
{
    NSMutableArray * jokeArray = [NSMutableArray arrayWithCapacity:data.count];
    
    [data enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [jokeArray addObject:[JKJokeModel jokeModelWithData:obj]];
    }];
    
    
    return jokeArray;
}

+ (JKJokeModel *)jokeModelWithData:(NSDictionary *)data
{
    JKJokeModel * jokeModel = [[JKJokeModel alloc]init];
    jokeModel.allowComment = [data[@"allow_comment"]boolValue];
    jokeModel.commentCount = [data[@"comments_count"]longValue];
    jokeModel.content = data[@"content"];
    jokeModel.createAt = [data[@"created_at"]longLongValue];
    jokeModel.jokeID = data[@"id"];
    jokeModel.image = [data[@"image"] isEqual:[NSNull null]] ? nil : data[@"image"];
    jokeModel.publishAt = [data[@"published_at"]longLongValue];
    jokeModel.state = data[@"state"];
    jokeModel.user = [JKUserModel userWithData:data[@"user"]];
    Votes votes;
    votes.up = [data[@"votes"][@"up"]longValue];
    votes.down = [data[@"votes"][@"down"]longValue];
    jokeModel.votes = votes;
    jokeModel.pic_url = data[@"pic_url"];
    
    return jokeModel;
}

- (NSString *)smallImageURL
{
//  return [NSString stringWithFormat:@"http://pic.moumentei.com/system/pictures/%@/%@/small/%@", [self.jokeID substringToIndex:4], self.jokeID, self.image];
//    return [NSString stringWithFormat:@"http://pic.qiushibaike.com/system/avtnew/%@/%@/medium/%@", [self.userID substringToIndex:self.userID.length - 4], self.userID, self.icon];
   // NSLog(@"鲁军%@",self.image);
    
    return @"as";
    
}

- (NSString *)largeImageURL
{
    return [NSString stringWithFormat:@"http://pic.moumentei.com/system/pictures/%@/%@/medium/%@", [self.jokeID substringToIndex:4], self.jokeID, self.image];

   // return @"asd";
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"{<%p %@>  content: %@ , jokeID: %@ , createID: %lld, image: %@ }}" , self,[JKJokeModel class],self.content,self.jokeID,self.createAt,self.image ];
}
- (NSString *)publishedAtTime{
    
    NSDate * createDate = [[NSDate alloc]initWithTimeIntervalSince1970:self.publishAt];
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc]init];
    dateFormatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    
    return [dateFormatter stringFromDate:createDate];
}
@end
