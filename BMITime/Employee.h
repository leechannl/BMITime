//
//  Employee.h
//  BMITime
//
//  Created by mm on 5/28/14.
//  Copyright (c) 2014 mm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@class Asset;

@interface Employee : Person

{
    int employeeID;
    NSMutableArray *assets;
}

@property int employeeID;
-(void)addAssetsObject:(Asset *)a;
-(unsigned int)valueOfAssets;

@end
