# TXCircularQueue
为充分利用向量空间，克服"假溢出"现象的方法是：将向量空间想象为一个首尾相接的圆环，并称这种向量为循环向量。存储在其中的队列称为循环队列（Circular Queue）。
### 功能简介
* 1、支持入队
* 2、支持出队
* 3、支持清除队列
* 4、支持获取相关状态
* 5、支持深浅拷贝
### 优点
* 可以有效的利用资源。用数组实现队列时，如果不移动，随着数据的不断读写，会出现假满队列的情况。即尾数组已满但头数组还是空的；循环队列也是一种数组，只是它在逻辑上把数组的头和尾相连，形成循环队列，当数组尾满的时候，要判断数组头是否为空，不为空继续存放数据。
### 缺点
* 循环队列中，由于入队时尾指针向前追赶头指针；出队时头指针向前追赶尾指针，造成队空和队满时头尾指针均相等。因此，无法通过条件front==rear来判别队列是"空"是"满"。
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

