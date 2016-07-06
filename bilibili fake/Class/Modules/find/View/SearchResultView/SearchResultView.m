//
//  SearchResultView.m
//  bilibili fake
//
//  Created by C on 16/7/6.
//  Copyright © 2016年 云之彼端. All rights reserved.
//

#import "SearchResultView.h"
#import "TabBar.h"
#import "FindViewData.h"
@implementation SearchResultView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(id)initWithKeywork:(NSString*)keywork{
    
    NSLog(@"%@",keywork);
    [FindViewData addSearchRecords:keywork];
    self = [super init];
    if (self) {
        self.backgroundColor =  [UIColor colorWithRed:243/255.0 green:243/255.0 blue:243/255.0 alpha:1];
        TabBar* tabBar = [[TabBar alloc] initWithTitles:@[@"综合",@"番剧",@"专题",@"UP主"]];
        [self addSubview:tabBar];
        [tabBar mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.right.equalTo(self);
            make.height.equalTo(@40);
        }];
    }
    return self;
}
@end
