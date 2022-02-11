//
//  JKUserModel.h
//  Jokes
//
//  Created by lujun on 2022/2/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN



@interface JKUserModel : NSObject

@property (nonatomic, assign) long long createAt;
@property (nonatomic, strong) NSString * icon;
@property (nonatomic, strong) NSString * userID;
//@property (nonatomic, strong) NSString * lastDevice;
//@property (nonatomic, strong) NSString * lastVisitedAt;
@property (nonatomic, strong) NSString * login;
//@property (nonatomic, strong) NSString * role;
@property (nonatomic, strong) NSString * state;

+ (JKUserModel *)userWithData:(NSDictionary *)data;

- (NSString *)iconURL;
- (NSString *)createAtDateString;


@end


NS_ASSUME_NONNULL_END
