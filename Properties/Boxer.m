//
//  Boxer.m
//  Properties
//
//  Created by Stanislav Kozhemyako on 6/14/16.
//  Copyright © 2016 Stanislav Kozhemyako. All rights reserved.
//

#import "Boxer.h"

@interface Boxer()

@property (assign, nonatomic) NSInteger nameCount;

@end

@implementation Boxer
@synthesize name = _name;

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.nameCount = 0;
        self.name = @"default";
        self.age = 1;
        self.height = 0.52f;
        self.weight = 5.f;
    }
    return self;
}

-(void)setName:(NSString *)inputName{
    NSLog(@"setter setName: is called");
    _name = inputName;
}


-(NSString *)name{
    self.nameCount++;
    NSLog(@"name getter is called %ld times", (long)self.nameCount);
    return _name;
}

-(NSInteger)age{
    NSLog(@"age getter is called");
    return _age;
}

-(NSInteger)howOldAreYou{
    return self.age;
}
@end
