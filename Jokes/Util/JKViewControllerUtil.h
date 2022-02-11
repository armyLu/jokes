//
//  JKViewControllerUtil.h
//  Jokes
//
//  Created by lujun on 2022/2/10.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN



typedef enum{
    JokeTypeNew,
    JokeTypekHot,
    JokeTypekTruth,
    JokeTypekAbout
} JokeType;



@interface JKViewControllerUtil : NSObject

+ (UILabel *)customNavigationTitleLabelWithString:(NSString *)title;
+ (NSString *)titleWithJokeType:(JokeType)jokeType;
+ (UILabel *)navigationTitleLabelWithJokeType:(JokeType)jokeType;

@end

NS_ASSUME_NONNULL_END
