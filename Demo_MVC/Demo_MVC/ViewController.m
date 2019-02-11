//
//  ViewController.m
//  Demo_MVC
//
//  Created by LeeHow on 2019/1/24.
//  Copyright © 2019 LeeHow. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *avatarImgView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"%@", self.avatarImgView);

    self.avatarImgView.layer.cornerRadius = self.avatarImgView.bounds.size.width / 2;

}



////当从storyboard加载view controller时
////awakeFromNib方法 & initWithCoder方法
////里面的subviews还没加载出来



- (void)awakeFromNib {
    [super awakeFromNib];
    
    NSLog(@"%@", self.avatarImgView);
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        NSLog(@"%@", self.avatarImgView);

    }
    return self;
}

@end
