//
//  Array2D.h
//  Array2D
//
//  Created by penghe on 2018/8/26.
//  Copyright © 2018年 WondersGroup. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Array2D : NSObject

- (instancetype)initWithColumns:(NSUInteger)columns rows:(NSUInteger)rows;

- (id)getElementByIndexRow:(NSUInteger)row column:(NSUInteger)column;

- (void)setElementByIndexRow:(NSUInteger)row column:(NSUInteger)column newValue:(id)newValue;

@end
