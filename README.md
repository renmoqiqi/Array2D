# iOS-
iOS二维数组数据结构

OC 语言里面没有二维数组这样的数据结构。一般怎么创建这样的结构呢？

网上的解决方案是用一个大的数组嵌套几个小数组来表示，那么类似array[1,1] 就是第二个数组的第二个元素，也就是类似C语言的第二行第二列。大致是则个样子。    int array[5][3]={{80,75,92},{61,65,71},{59,63,70},{85,87,90},{76,77,85}};  

但是这样嵌套必然太麻烦。

![](https://upload-images.jianshu.io/upload_images/1304277-e13a6195542cdd5d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

我们自己可以创建类似这样的一个数据结构，基于一维数组来构造。

大致思路是：

这个二维数组的索引是通过一维数组的(row x numberOfColumns) + column来换算获取。
```
- (void)buildArray2D

{

    for (int i = 0; i<self.rows*self.columns; i++)

    {

        [self.arrayContainer addObject:[NSNull null]];

    }

}
```
用NSNull 占位


```
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
```
利用row x numberOfColumns) + column 关系设置或者获取元素，并用NSAssert做越界判断抛出异常
