//
//  batteryView.m
//  test
//
//  Created by chencancan on 2021/7/16.
//

#import "BatteryView.h"

@interface BatteryView()

@property (nonatomic, strong) UILabel *label;

@end

@implementation BatteryView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(4, 5, CGRectGetWidth(self.frame) - 8, CGRectGetHeight(self.frame)- 9)];
    path.lineWidth = 1;
    [[UIColor blackColor] set];
    [path stroke];
    UIBezierPath *path2 = [UIBezierPath bezierPathWithRect:CGRectMake(6, 4, CGRectGetWidth(self.frame) - 12, 1)];
    path2.lineWidth = 1;
    [[UIColor blackColor] set];
    [path2 stroke];
    UIBezierPath *path3 = [UIBezierPath bezierPathWithRect:CGRectMake(5, 11, CGRectGetWidth(self.frame) - 10, CGRectGetHeight(self.frame) - 11 - 5)];
    [[UIColor greenColor] set];
    [path3 fill];
    
}

- (void)setStroage:(NSString *)stroage {
    
    _stroage = stroage;
    self.label.text = stroage;
}

- (UILabel *)label {
    
    if (!_label) {
        _label = [[UILabel alloc] init];
        _label.frame = CGRectMake(0, CGRectGetHeight(self.frame) / 2.0 - 5, CGRectGetWidth(self.frame), 10);
        _label.textAlignment = NSTextAlignmentCenter;
        _label.font = [UIFont systemFontOfSize:8];
        [self addSubview:_label];
    }
    return _label;
}

@end
