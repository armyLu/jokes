//
//  JKUserModel.m
//  Jokes
//
//  Created by lujun on 2022/2/10.
//


#import "JKUserModel.h"
#import "NSDictionary+Util.h"

@implementation JKUserModel

+ (JKUserModel *)userWithData:(NSDictionary *)data
{
    if ((id)data == [NSNull null] || data == nil || data.allKeys.count <= 0) return nil;
    
    JKUserModel * userModel = [[JKUserModel alloc]init];
    userModel.createAt = [data[@"created_at"]longLongValue];
    userModel.icon = [[data stringWithKey:@"icon"] isEqual:[NSNull null]] ? nil : [data stringWithKey:@"icon"];
//    userModel.userID = data[@"id"];
    userModel.userID = [NSString stringWithFormat:@"%@",data[@"id"]];
    userModel.login = data[@"login"];
    userModel.state = data[@"role"];
    
    return userModel;
}

- (NSString *)iconURL
{
    
    // medium
    return [NSString stringWithFormat:@"http://pic.qiushibaike.com/system/avtnew/%@/%@/medium/%@", [self.userID substringToIndex:self.userID.length - 4], self.userID, self.icon];
    
   // return @"qw";
}

- (NSString *)createAtDateString
{
    NSLog(@"鲁军%lld",self.createAt);
    NSDate * createDate = [[NSDate alloc]initWithTimeIntervalSince1970:self.createAt];
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc]init];
    dateFormatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    
    return [dateFormatter stringFromDate:createDate];
}

@end
