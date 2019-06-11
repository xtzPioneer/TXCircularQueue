//
//  TXCircularQueue.h
//  TXCircularQueue
//
//  Created by xtz_pioneer on 2019/6/11.
//  Copyright © 2019 xtz_pioneer. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/** 循环队列 */
@interface TXCircularQueue : NSObject <NSCopying,NSMutableCopying>

/** 入队 */
- (void)enqueue:(NSObject*)object;

/** 出队 */
- (NSObject*)dequeue;

/** 清除 */
- (void)clear;

/** 是否满队 */
- (BOOL)isFull;

/** 是否空队 */
- (BOOL)isEmpty;

/**
 *  构建CircularQueue
 *
 *  param capacity 容量
 *
 */
- (instancetype)initWithCapacity:(NSUInteger)capacity;

/**
 *  构建CircularQueue
 *
 *  param capacity 容量
 *
 */
+ (instancetype)circularQueueWithCapacity:(NSUInteger)capacity;

/** 快速构建CircularQueue */
+ (instancetype)circularQueue;

// 禁止使用下面方法创建对象
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
