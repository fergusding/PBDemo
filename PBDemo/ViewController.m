//
//  ViewController.m
//  PBDemo
//
//  Created by ding.fan on 2018/6/14.
//  Copyright © 2018年 ding.fan. All rights reserved.
//

#import "ViewController.h"
#import "PBPerson.pbobjc.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    PBPerson *person = [[PBPerson alloc] init];
    person.name = @"Fergus Ding";
    person.age = 25;
    person.gender = PBPerson_Gender_Male;
    person.birthday = @"1992-10-24";
    person.country = @"China";
    
    NSData *data = [person data];
    NSLog(@"data: \n%@", data);
    PBPerson *person_ = [PBPerson parseFromData:data error:NULL];
    NSLog(@"person: \n%@", person_.description);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
