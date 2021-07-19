//
//  ViewController.m
//  test
//
//  Created by chencancan on 2021/7/16.
//

#import "ViewController.h"
#import "batteryView.h"

@interface ViewController ()

@property (nonatomic, strong) batteryView *bv;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _bv = [[batteryView alloc] init];
    [self.view addSubview:_bv];
    _bv.frame = CGRectMake(100, 100, 50, 100);
    _bv.backgroundColor = [UIColor whiteColor];
    _bv.stroage = @"20";
}


@end
