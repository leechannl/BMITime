//
//  Asset.h
//  BMITime
//
//  Created by mm on 5/29/14.
//  Copyright (c) 2014 mm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

@interface Asset : NSObject
{
    NSString *label;
    Employee *holder;
    unsigned int resaleValue;
}
@property (strong) NSString *label;
@property (strong) Employee *holder;
@property unsigned int resaleValue;
@end
