//
//  TXViewController.m
//  TXCircularQueue
//
//  Created by zhangxiong on 06/11/2019.
//  Copyright (c) 2019 zhangxiong. All rights reserved.
//

#import "TXViewController.h"
#import "TXCircularQueue.h"

@interface TXViewController ()
@property (nonatomic,strong)TXCircularQueue *circularQueue;
@end

@implementation TXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 创建循环队列
    self.circularQueue = [TXCircularQueue circularQueue];
    
    // 入队
    [self.circularQueue enqueue:@1]; NSLog(@"入队:1");
    [self.circularQueue enqueue:@2]; NSLog(@"入队:2");
    [self.circularQueue enqueue:@3]; NSLog(@"入队:3");
    [self.circularQueue enqueue:@4]; NSLog(@"入队:4");
    [self.circularQueue enqueue:@5]; NSLog(@"入队:5");
    [self.circularQueue enqueue:@5]; NSLog(@"入队:6");
    
    // 出队
    NSLog(@"出队:%@",[self.circularQueue dequeue]);
    NSLog(@"出队:%@",[self.circularQueue dequeue]);
    NSLog(@"出队:%@",[self.circularQueue dequeue]);
    NSLog(@"出队:%@",[self.circularQueue dequeue]);
    NSLog(@"出队:%@",[self.circularQueue dequeue]);
    
    // 清除
    [self.circularQueue clear];
    
    // 入队
    [self.circularQueue enqueue:@1]; NSLog(@"入队:1");
    [self.circularQueue enqueue:@2]; NSLog(@"入队:2");
    [self.circularQueue enqueue:@3]; NSLog(@"入队:3");
    [self.circularQueue enqueue:@4]; NSLog(@"入队:4");
    [self.circularQueue enqueue:@5]; NSLog(@"入队:5");
    [self.circularQueue enqueue:@6]; NSLog(@"入队:6");
    [self.circularQueue enqueue:@7]; NSLog(@"入队:7");
    [self.circularQueue enqueue:@8]; NSLog(@"入队:8");
    [self.circularQueue enqueue:@9]; NSLog(@"入队:9");
    [self.circularQueue enqueue:@10]; NSLog(@"入队:10");
    
    NSLog(@"出队:%@",[self.circularQueue dequeue]);
    NSLog(@"出队:%@",[self.circularQueue dequeue]);
    NSLog(@"出队:%@",[self.circularQueue dequeue]);
    NSLog(@"出队:%@",[self.circularQueue dequeue]);
    NSLog(@"出队:%@",[self.circularQueue dequeue]);
    
    if ([self.circularQueue isEmpty]) {
        NSLog(@"队列为空");
    }else{
        NSLog(@"队列不为空");
    }
    
    if ([self.circularQueue isFull]) {
        NSLog(@"队列满了");
    }else{
        NSLog(@"队列不满");
    }
    
    // 浅拷贝
    TXCircularQueue *circularQueueCopy = self.circularQueue.copy;
    NSLog(@"出队:%@",[circularQueueCopy dequeue]);
    NSLog(@"出队:%@",[circularQueueCopy dequeue]);
    NSLog(@"出队:%@",[circularQueueCopy dequeue]);
    NSLog(@"出队:%@",[circularQueueCopy dequeue]);
    NSLog(@"出队:%@",[circularQueueCopy dequeue]);
    
    // 深拷贝
    TXCircularQueue *circularQueueMutableCopy = self.circularQueue.mutableCopy;
    NSLog(@"出队:%@",[circularQueueMutableCopy dequeue]);
    NSLog(@"出队:%@",[circularQueueMutableCopy dequeue]);
    NSLog(@"出队:%@",[circularQueueMutableCopy dequeue]);
    NSLog(@"出队:%@",[circularQueueMutableCopy dequeue]);
    NSLog(@"出队:%@",[circularQueueMutableCopy dequeue]);
    
    // 内存地址
    NSLog(@"circularQueueCopy:%@",circularQueueCopy);
    NSLog(@"circularQueueMutableCopy:%@",circularQueueMutableCopy);
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
