//
//  ASTransitMonitorManager.m
//  ASTransitMonitor
//
//  Created by JHH on 2017. 7. 14..
//  Copyright © 2017년 JHH. All rights reserved.
//

#import "ASTransitMonitorManager.h"


@implementation ASTransitMonitorManager

-(void)transitMonitor:(ASTransitMonitor *)transitMonitor didChangeTransitState:(ASTransitState)transitState{
    switch (transitState) {
        case ASTransitStateStationary:
            [self.delegate locationManager:self didChangeTransitState:@"정지"];
            break;
        case ASTransitStateDriving:
            [self.delegate locationManager:self didChangeTransitState:@"운전중"];
            break;
        case ASTransitStateRunning:
            [self.delegate locationManager:self didChangeTransitState:@"뛰기"];
            break;
        case ASTransitStateWalking:
            [self.delegate locationManager:self didChangeTransitState:@"걷기"];
            break;
        default:
            [self.delegate locationManager:self didChangeTransitState:@"기타"];
            break;
    }
    
    
}
-(void)initMonitor{
    self.transitMonitor = [ASTransitMonitor sharedInstance];
    self.transitMonitor.delegate = self;
    [self startMonitor];
}

-(void)startMonitor{
    [self.transitMonitor startMonitoring];
}
@end
