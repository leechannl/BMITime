//
//  Asset.m
//  BMITime
//
//  Created by mm on 5/29/14.
//  Copyright (c) 2014 mm. All rights reserved.
//

#import "Asset.h"

@implementation Asset

@synthesize label, resaleValue;

- (NSString *) description
{
    return [NSString stringWithFormat:@"<%@: $%d >",
            [self label], [self resaleValue]];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
