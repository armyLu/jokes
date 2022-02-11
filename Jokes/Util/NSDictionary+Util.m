//
//  NSDictionary+Util.m
//  Jokes
//
//  Created by lujun on 2022/2/10.
//

#import "NSDictionary+Util.h"

@implementation NSDictionary(Util)

- (NSString *)stringWithKey:(NSString *)key
{
    id obj = [self objectForKey:key];
    
    if (obj == [NSNull null]) {
        return @"";
    }
    
    return obj;
}

@end
