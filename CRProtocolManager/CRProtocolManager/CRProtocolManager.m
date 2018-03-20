//
//  CRProtocolManager.m
//  CRProtocolManager
//
//  Created by yyz on 2018/3/20.
//  Copyright © 2018年 yyz. All rights reserved.
//

#import "CRProtocolManager.h"


@interface CRProtocolManager ()

@property (nonatomic, strong) NSMutableDictionary *serviceProvideSource;
@end
@implementation CRProtocolManager
+ (CRProtocolManager *)sharedInstance
{
    static CRProtocolManager * instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _serviceProvideSource = [[NSMutableDictionary alloc] init];
    }
    return self;
}

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol
{
    if (provide == nil || protocol == nil)
        return;
    [[self sharedInstance].serviceProvideSource setObject:provide forKey:NSStringFromProtocol(protocol)];
}

+ (id)serviceProvideForProtocol:(Protocol *)protocol
{
    return [[self sharedInstance].serviceProvideSource objectForKey:NSStringFromProtocol(protocol)];
}
@end
