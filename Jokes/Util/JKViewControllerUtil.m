//
//  JKViewControllerUtil.m
//  Jokes
//
//  Created by lujun on 2022/2/10.
//


#import "JKViewControllerUtil.h"

@implementation JKViewControllerUtil

+ (NSString *)titleWithJokeType:(JokeType)jokeType
{
    NSString * titleString = @"";
    
    switch (jokeType) {
        case JokeTypeNew:
            titleString = @"最新";
            break;
        case JokeTypekHot:
            titleString = @"最热";
            break;
        case JokeTypekTruth:
            titleString = @"真相";
            break;
        case JokeTypekAbout:
            titleString = @"关于我";
    }
    
    return titleString;
}
+ (UILabel *)navigationTitleLabelWithJokeType:(JokeType)jokeType
{
    return [JKViewControllerUtil customNavigationTitleLabelWithString:[JKViewControllerUtil titleWithJokeType:jokeType]];
}

+ (UILabel *)customNavigationTitleLabelWithString:(NSString *)title
{
    UILabel * titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 30)];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [titleLabel setText:title];
    [titleLabel setTextColor:[UIColor orangeColor]];
    
    return titleLabel;
}

@end
