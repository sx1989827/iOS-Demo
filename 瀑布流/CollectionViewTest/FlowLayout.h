//
//  FlowLayout.h
//  CollectionViewTest
//
//  Created by 孙昕 on 16/4/5.
//  Copyright © 2016年 孙昕. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FlowLayout : UICollectionViewFlowLayout
{
    NSMutableArray *arr; //列的数组的高度
    NSMutableArray *arrItem; //每个item的属性
}
@end
