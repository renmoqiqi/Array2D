//
//  ViewController.m
//  Array2D
//
//  Created by penghe on 2018/8/26.
//  Copyright © 2018年 WondersGroup. All rights reserved.
//

#import "ViewController.h"
#import "Array2D.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Array2D *testArray2D = [[Array2D alloc] initWithColumns:4 rows:4];
    NSLog(@"%@",testArray2D);

    [testArray2D setElementByIndexRow:2 column:2 newValue:@"2"];
    NSLog(@"%@",[testArray2D getElementByIndexRow:2 column:2]);

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
