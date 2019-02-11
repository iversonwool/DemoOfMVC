//
//  BlogTableViewHelper.h
//  Demo_MVC
//
//  Created by LeeHow on 2019/1/24.
//  Copyright © 2019 LeeHow. All rights reserved.
//


//// blog的C层 ////

#import <Foundation/Foundation.h>
@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface BlogTableViewHelper : NSObject

+ (instancetype)helperWithTableView:(UITableView *)tableView userID:(NSString *)userID;

- (void)fetchDataWithCompletionHandler:(void (^)(NSError *, id data))completionHandler;

//- (void)setVCGenerator:(

@end

NS_ASSUME_NONNULL_END
