//
//  Person.h
//  BMITime
//
//  Created by mm on 5/27/14.
//  Copyright (c) 2014 mm. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    float heightInMeters;
    int weightInKilos;
}

@property float heightInMeters;
@property int weightInKilos;

- (float)bodyMassIndex;

@end
