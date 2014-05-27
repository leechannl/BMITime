//
//  Person.m
//  BMITime
//
//  Created by mm on 5/27/14.
//  Copyright (c) 2014 mm. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize heightInMeters, weightInKilos;

- (float)bodyMassIndex
{
    return weightInKilos / (heightInMeters * heightInMeters);
}

@end