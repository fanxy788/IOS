//
//  ClearMutableArray.h
//  Clear
//
//  Created by develop on 2018/7/16.
//  Copyright © 2018年 Tendzone. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClearMutableArray : NSObject

//只读
- (NSMutableArray *)safeArray;

//判断是否包含对象
- (BOOL)containsObject:(id)anObject;

//集合元素数量
- (NSUInteger)count;

//获取元素
- (id)objectAtIndex:(NSUInteger)index;
//枚举元素
- (NSEnumerator *)objectEnumerator;
//插入
- (void)insertObject:(id)anObject atIndex:(NSUInteger)index;
//插入
- (void)addObject:(id)anObject;
//移除
- (void)removeObjectAtIndex:(NSUInteger)index;
//移除
- (void)removeObject:(id)anObject;
//移除
- (void)removeLastObject;

- (void)removeAllObjects;

//替换
- (void)replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject;
//交换
- (void)exchangeObjectAtIndex:(NSUInteger)idx1 withObjectAtIndex:(NSUInteger)idx2;
//获取索引
- (NSUInteger)indexOfObject:(id)anObject;

@end
