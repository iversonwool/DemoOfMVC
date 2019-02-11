//
//  BlogTableViewHelper.m
//  Demo_MVC
//
//  Created by LeeHow on 2019/1/24.
//  Copyright © 2019 LeeHow. All rights reserved.
//

#import "BlogTableViewHelper.h"
#import "UserApiManager.h"
#import "BlogTableViewCell.h"

@interface BlogTableViewHelper () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, weak) UITableView *tableView;
@property (nonatomic, copy) NSString *userID;
@property (nonatomic, strong) NSMutableArray *blogs;//cell helper
@property (nonatomic, strong) UserApiManager *apiManager;

@end


static NSString *const cellIdentifier = @"BlogTableViewHelper";

@implementation BlogTableViewHelper

+ (instancetype)helperWithTableView:(UITableView *)tableView userID:(NSString *)userID {
    return [[self alloc] initWithTableView:tableView userID:userID];
}

- (instancetype)initWithTableView:(UITableView *)tableView userID:(NSString *)userID {
    self = [super init];
    if (self) {
        _userID = userID;
        _tableView = tableView;
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:BlogTableViewCell.class forCellReuseIdentifier:cellIdentifier];
    }
    return self;
}

#pragma mark -
#pragma mark - UITableViewDataSource
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    BlogTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    BlogTableViewHelper *cellHelper  = self.blogs[indexPath.row];
    
    //configuration
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.blogs.count;
}

#pragma mark -
- (void)fetchDataWithCompletionHandler:(void (^)(NSError * _Nonnull, id _Nonnull))completionHandler {
//    [[UserApiManager alloc] init]
}

@end
