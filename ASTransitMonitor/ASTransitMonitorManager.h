//
//  ASTransitMonitorManager.h
//  ASTransitMonitor
//
//  Created by JHH on 2017. 7. 14..
//  Copyright © 2017년 JHH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ASTransitMonitor/ASTransitMonitor.h>
@class ASTransitMonitorManager;
@protocol ASLocationMonitorManagerDelegate <NSObject>

-(void)locationManager:(ASTransitMonitorManager*)locationManager  didChangeTransitState:(NSString*)stateString;
-(void)locationManager:(ASTransitMonitorManager*)locationManager  didChangeSpeed:(CGFloat)newSpeed oldSpeed:(CGFloat)oldSpeed;
@end

@interface ASTransitMonitorManager : NSObject<ASTransitMonitorDelegate>
@property (nonatomic,assign) ASTransitMonitor *transitMonitor;
@property (nonatomic,assign) id<ASLocationMonitorManagerDelegate> delegate;
-(void)initMonitor;
@end
