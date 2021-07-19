//
//  batteryView.h
//  test
//
//  Created by chencancan on 2021/7/16.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BatteryView : UIView

/// 电池电量
@property (nonatomic, copy) NSString *quntity;
/// 电池方向 up right
@property (nonatomic, copy) NSString *dirction;
/// 充电标志
@property (nonatomic, assign, getter=isCharge) BOOL *charge;

@end

NS_ASSUME_NONNULL_END
