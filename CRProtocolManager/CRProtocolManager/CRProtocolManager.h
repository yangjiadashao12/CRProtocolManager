//
//  CRProtocolManager.h
//  CRProtocolManager
//
//  Created by yyz on 2018/3/20.
//  Copyright © 2018年 yyz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CRProtocolManager : NSObject
+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol;

+ (id)serviceProvideForProtocol:(Protocol *)protocol;
@end
