//
//  ViewController.m
//  NSOperation
//
//  Created by Rex Ma on 15/7/28.
//  Copyright (c) 2015年 Rex Ma. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    NSOperationQueue *mainQueue = [NSOperationQueue mainQueue];
    
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    
    NSBlockOperation *operationZero = [NSBlockOperation blockOperationWithBlock:^{
        NSLog(@"The queue Zero");
    }];
    
    NSBlockOperation *operationOne = [NSBlockOperation blockOperationWithBlock:^{
        NSLog(@"The queue One");
    }];
    
    NSBlockOperation *operationTwo = [NSBlockOperation blockOperationWithBlock:^{
        NSLog(@"The queue Two");
    }];
    
    operationTwo.queuePriority = NSOperationQueuePriorityHigh;
    
    [queue addOperations:@[operationZero, operationOne, operationTwo] waitUntilFinished:YES];
//    [queue addOperation:operation];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
