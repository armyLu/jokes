//
//  JKLoadMoreView.m
//  Jokes
//
//  Created by lujun on 2022/2/10.
//

#import "JKLoadMoreView.h"

@interface JKLoadMoreView ()

@property (weak, nonatomic) IBOutlet UIButton *loadMoreButton1;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicatorView1;

@end

@implementation JKLoadMoreView

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    self.indicatorView1.hidden = YES;
}

- (IBAction)loadMoreAction:(id)sender
{
    self.loadMoreButton1.hidden = YES;
    self.indicatorView1.hidden = NO;
    
    [self.indicatorView1 startAnimating];
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(loadMore)]) {
        [self.delegate loadMore];
    }
}

- (void)stopLoadMore
{
    self.loadMoreButton1.hidden = NO;
    self.indicatorView1.hidden = YES;
    [self.indicatorView1 stopAnimating];
}
@end

