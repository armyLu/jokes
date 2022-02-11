//
//  JKJokeController.h
//  Jokes
//
//  Created by lujun on 2022/2/10.
//

#import <UIKit/UIKit.h>
#import "JKViewControllerUtil.h"
#import "JKJokeCell.h"
#import "JKLoadMoreView.h"


@interface JKJokeController : UITableViewController <UITableViewDataSource, UITableViewDelegate, JokeCellActionsDelegate, LoadMoreDelegate>

@property (nonatomic, assign) JokeType jokeType;

@end
