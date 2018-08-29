//
//  Array2D.m
//  Array2D
//
//  Created by penghe on 2018/8/26.
//  Copyright © 2018年 WondersGroup. All rights reserved.
//

#import "Array2D.h"

@interface Array2D()

@property (nonatomic, assign) NSUInteger columns;
@property (nonatomic, assign) NSUInteger rows;
@property (nonatomic, strong) NSMutableArray *arrayContainer;

@end

@implementation Array2D
- (instancetype)initWithColumns:(NSUInteger)columns rows:(NSUInteger)rows
{
    self = [super init];
    if (self)
    {
        self.columns = columns;
        self.rows = rows;
        _arrayContainer = [[NSMutableArray alloc] initWithCapacity:columns*rows];
        [self buildArray2D];
    }
    return self;
}

- (void)buildArray2D
{
    for (int i = 0; i<self.rows*self.columns; i++)
    {
        [self.arrayContainer addObject:[NSNull null]];

    }
}

- (id)getElementByIndexRow:(NSUInteger)row column:(NSUInteger)column
{
    NSAssert(row <= self.columns, @"row 不能大于 rows");

    NSAssert(column <= self.rows, @"column 不能大于 columns");
    id returnElement = self.arrayContainer[row*self.columns + column];
    return returnElement;



}
- (void)setElementByIndexRow:(NSUInteger)row column:(NSUInteger)column newValue:(id)newValue
{
    NSAssert(row <= self.columns, @"row 不能大于 rows");

    NSAssert(column <= self.rows, @"column 不能大于 columns");
    self.arrayContainer[row*self.columns + column] = newValue;

}
@end
