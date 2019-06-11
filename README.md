# TXCircularQueue
为充分利用向量空间，克服"假溢出"现象的方法是：将向量空间想象为一个首尾相接的圆环，并称这种向量为循环向量。存储在其中的队列称为循环队列（Circular Queue）。
### 功能简介
* 1、支持入队
* 2、支持出队
* 3、支持清除队列
* 4、支持获取相关状态
* 5、支持深浅拷贝
### 安装
```ruby
pod 'TXCircularQueue'
```
### 使用姿势
```objc
#import "TXCircularQueue.h"
```
#### 创建循环队列(1)
```objc
self.circularQueue = [TXCircularQueue circularQueue];
```
#### 创建循环队列(2)
```objc
self.circularQueue = [TXCircularQueue circularQueueWithCapacity:10];
```
#### 创建循环队列(3)
```objc
self.circularQueue = [[TXCircularQueue alloc]initWithCapacity:10];
```
#### 入队
```objc
[self.circularQueue enqueue:@1]
```
#### 出队
```objc
[self.circularQueue dequeue]
```
#### 清除队列
```objc
[self.circularQueue clear];
```

