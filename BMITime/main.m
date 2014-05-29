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
#import "Asset.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        NSMutableArray *employees = [[NSMutableArray alloc] init];

        for (int i = 0; i < 10; i++) {
            Employee *person = [[Employee alloc] init];

            [person setWeightInKilos:90 + i];
            [person setHeightInMeters:1.8 - i/10.0];
            [person setEmployeeID:i];

            [employees addObject:person];
        }

        NSMutableArray *allAssets = [[NSMutableArray alloc] init];

        for (int i = 0; i < 10; i++) {
            Asset *asset = [[Asset alloc] init];
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            [asset setLabel:currentLabel];
            [asset setResaleValue: i * 17];

            NSUInteger randomIndex = random() % [employees count];
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];

            [randomEmployee addAssetsObject:asset];

            [allAssets addObject:asset];
        }

        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        NSSortDescriptor *ei = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];

        [employees sortUsingDescriptors:[NSArray arrayWithObjects:voa, ei, nil]];

        NSLog(@"Employees: %@", employees);

        NSLog(@"Giving up ownrship of one employee");

        [employees removeObjectAtIndex:5];

        NSLog(@"allAssets: %@", allAssets);

        NSLog(@"Giving up ownership of array");

        allAssets = nil;
        employees = nil;
    }
    return 0;
}