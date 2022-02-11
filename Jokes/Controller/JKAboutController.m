//
//  JKAboutController.m
//  Jokes
//
//  Created by lujun on 2022/2/10.
//

#import "JKAboutController.h"

@implementation JKAboutController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.titleView = [JKViewControllerUtil navigationTitleLabelWithJokeType:self.jokeType];
}

@end
