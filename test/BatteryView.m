//
//  batteryView.m
//  test
//
//  Created by chencancan on 2021/7/16.
// 电池主体长方形W:H = 1:1.5,
// 电池正极W:H = 1:3,
// 主体和正极W: 2:1
// 电量字体是电池主体的1/3

#import "BatteryView.h"

@interface BatteryView()

/// 电量
@property (nonatomic, strong) UILabel *label;
/// 电池主体宽度
@property (nonatomic, assign) CGFloat mainBoxW;
/// 电池主体高度
@property (nonatomic, assign) CGFloat mainBoxH;
/// 电池正极宽度
@property (nonatomic, assign) CGFloat nagtiveBoxW;
/// 电池正极高度
@property (nonatomic, assign) CGFloat nagtiveBoxH;
/// 电量文字字号
@property (nonatomic, assign) CGFloat textSize;

@end

@implementation BatteryView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [self caculateFrame];
    CGFloat W = CGRectGetWidth(self.frame);
    CGFloat H = CGRectGetHeight(self.frame);
    UIBezierPath *nagtiveBoxPath = [UIBezierPath bezierPathWithRect:CGRectMake((W - self.nagtiveBoxW) / 2.0, (H - self.mainBoxH - self.nagtiveBoxH) / 2.0, self.nagtiveBoxW, self.nagtiveBoxH)];
    [[UIColor blackColor] set];
    [nagtiveBoxPath fill];
    UIBezierPath *mainBoxPath = [UIBezierPath bezierPathWithRect:CGRectMake((W - self.mainBoxW) / 2.0, self.nagtiveBoxH + (H - self.mainBoxH - self.nagtiveBoxH) / 2.0, self.mainBoxW, self.mainBoxH)];
    mainBoxPath.lineWidth = MAX(self.nagtiveBoxH / 2.0, 1);
    [[UIColor blackColor] set];
    [mainBoxPath stroke];
    UIBezierPath *path3 =
    [UIBezierPath bezierPathWithRect:
     CGRectMake(MAX(self.nagtiveBoxH / 2.0, 1) + (W - self.mainBoxW) / 2.0,
                self.mainBoxH * (1 - self.quntity.integerValue / 100.0) + self.nagtiveBoxH + (H - self.mainBoxH - self.nagtiveBoxH) / 2.0,
                self.mainBoxW - MAX(self.nagtiveBoxH / 2.0, 1) * 2,
                self.mainBoxH * (self.quntity.integerValue / 100.0) - MAX(self.nagtiveBoxH / 2.0, 1))];
    [[UIColor greenColor] set];
    [path3 fill];
    if (self.isCharge) {
        
    }
}

- (void)caculateFrame {
    
    CGFloat W = CGRectGetWidth(self.frame);
    CGFloat H = CGRectGetHeight(self.frame);
    if ([self.dirction isEqualToString:@"up"]) {
        // 电池方向竖直
    }else if ([self.dirction isEqualToString:@"right"]) {
        // 电池方向横向
    }else {
        // 自动
        self.textSize = MIN(W, H) / 2.5;
        self.label.font = [UIFont systemFontOfSize:self.textSize];
        if (W <= H) {
            self.mainBoxW = MIN(W - 8, (H - 8) / 1.5);
            self.mainBoxH = self.mainBoxW * 1.5;
            self.nagtiveBoxW = self.mainBoxW * 0.5;
            self.nagtiveBoxH = self.nagtiveBoxW / 3.0;
        }else {
            
        }
    }
}

- (void)setQuntity:(NSString *)quntity {
    _quntity = quntity;
    self.label.text = quntity;
    [self setNeedsLayout];
    [self setNeedsDisplay];
}

- (void)setCharge:(BOOL *)charge {
    _charge = charge;
    self.label.hidden = charge;
}

- (UILabel *)label {
    
    if (!_label) {
        _label = [[UILabel alloc] init];
        _label.frame = self.bounds;//CGRectMake(0, CGRectGetHeight(self.frame) / 2.0 - self.textSize / 2.0, CGRectGetWidth(self.frame), self.textSize);
        _label.textAlignment = NSTextAlignmentCenter;
        _label.font = [UIFont systemFontOfSize:self.textSize];
        [self addSubview:_label];
    }
    return _label;
}

@end
