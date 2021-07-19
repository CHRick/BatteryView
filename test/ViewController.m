//
//  ViewController.m
//  test
//
//  Created by chencancan on 2021/7/16.
//

#import "ViewController.h"
#import "BatteryView.h"

@interface ViewController ()

@property (nonatomic, strong) BatteryView *bv;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _bv = [[BatteryView alloc] init];
    [self.view addSubview:_bv];
    _bv.frame = CGRectMake(100, 100, 20, 50);
    _bv.quntity = @"50";
}


@end
