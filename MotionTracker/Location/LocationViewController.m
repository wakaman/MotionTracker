//
//  LocationViewController.m
//  MotionTracker
//
//  Created by developer-hackintosh on 7/18/21.
//  Copyright (c) 2021 developer-hackintosh. All rights reserved.
//

#import "LocationViewController.h"
#import "CLLocationMgr.h"


@interface LocationViewController ()

@end

@implementation LocationViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)trackAction:(id)sender {
    
    // NSLog(@"%@", [sender stringValue]);
    
    
    UIButton *button = (UIButton *)sender;  //参数id是一个通用内型，此处将其强制转换成UIButton内型
    
    //每个button都有唯一的tag，系统默认陪标示用的，是一个整数
    NSString *title =[NSString stringWithFormat:@"Button tag %d", button.tag];//将button tag 转换成字符串输出
    NSLog(@"title: %@", title);
    
    NSString *message = [button currentTitle];     //取得button名称
    NSLog(@"new title: %@", message);
    
    
    [[CLLocationMgr sharedInstance] startTracking];
    
    
    [sender setHidden:true];
}

@end
