//
//  main.m
//  BMITime
//
//  Created by mm on 5/27/14.
//  Copyright (c) 2014 mm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Employee.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        Employee *person = [[Employee alloc] init];

        [person setWeightInKilos:70];
        [person setHeightInMeters:1.7];

        float bmi = [person bodyMassIndex];

        NSLog(@"person has a BMI of %f", bmi);

        [person setEmployeeID:15];
    }
    return 0;
}

