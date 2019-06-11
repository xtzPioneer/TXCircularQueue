//
//  TXCircularQueue.m
//  TXCircularQueue
//
//  Created by xtz_pioneer on 2019/6/11.
//  Copyright © 2019 xtz_pioneer. All rights reserved.
//

#import "TXCircularQueue.h"

@interface TXCircularQueue ()

/** 前面 */
@property (nonatomic,assign)NSInteger front;

/** 后面 */
@property (nonatomic,assign)NSInteger rear;

/** 容量 */
@property (nonatomic,assign)NSUInteger capacity;

/** 元素 */
@property (nonatomic,strong)NSMutableArray *elements;

@end

@implementation TXCircularQueue

/**
 *  构建CircularQueue
 *
 *  param capacity 容量
 *
 */
- (instancetype)initWithCapacity:(NSUInteger)capacity {
    if (self = [super init]) {
        self.elements = [NSMutableArray arrayWithCapacity:capacity];
        self.capacity = capacity;
        [self reset];
    }
    return self;
}

/**
 *  构建CircularQueue
 *
 *  param capacity 容量
 *
 */
+ (instancetype)circularQueueWithCapacity:(NSUInteger)capacity {
    return [[self alloc] initWithCapacity:capacity];
}

/** 快速构建CircularQueue */
+ (instancetype)circularQueue {
    return [self circularQueueWithCapacity:10];
}

/** 是否满队 */
- (BOOL)isFull {
    return (self.front == 0 && self.rear == self.capacity-1 ) || self.front == self.rear+1;
}

/** 是否空队 */
- (BOOL)isEmpty {
    return self.front == -1;
}

/** 复位 */
- (void)reset {
    self.front = -1;
    self.rear = -1;
}

/** 清除 */
- (void)clear {
    [self reset];
    [self.elements removeAllObjects];
}

/** 入队 */
- (void)enqueue:(NSObject*)object {
    if (![self isFull]) {
        if (self.rear == self.capacity-1 || self.rear == -1) {
            self.elements[0] = object;
            self.rear = 0 ;
            if (self.front == -1 ) {
                self.front = 0;
            }
        }else {
            self.elements[++self.rear] = object;
        }
    }else {
        self.capacity++;
        self.rear++;
        [self.elements addObject:object];
    }
}

/** 出队 */
- (NSObject*)dequeue {
    if (![self isEmpty]) {
        NSObject *object = self.elements[self.front];
        if (self.front == self.rear) {
            self.rear = self.front = -1;
        }else if (self.front == self.capacity-1) {
            self.front = 0 ;
        }else {
            self.front++;
        }
        return object;
    }else {
        return nil;
    }
}

/** NSCopying copy 协议 */
- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    TXCircularQueue *circularQueue = [[[self class] allocWithZone:zone] init];
    circularQueue.front = self.front;
    circularQueue.rear = self.rear;
    circularQueue.capacity = self.capacity;
    circularQueue.elements = self.elements.copy;
    return circularQueue;
}

/** NSCopying mutableCopy 协议 */
- (nonnull id)mutableCopyWithZone:(nullable NSZone *)zone {
    TXCircularQueue *circularQueue = [[[self class] allocWithZone:zone] init];
    circularQueue.front = self.front;
    circularQueue.rear = self.rear;
    circularQueue.capacity = self.capacity;
    circularQueue.elements = self.elements.mutableCopy;
    return circularQueue;
}

@end
