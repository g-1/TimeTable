//
//  MatrixContentView.h
//  TimeTable
//
//  Created by Naka Takahiro on 11/11/08.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SubTableViewCell;

@interface MatrixContentView : UIView{
 @private
  SubTableViewCell *cell;
}

- (id)initWithFrame:(CGRect)frame withCell:(SubTableViewCell* )aCell;

- (void)updateFrame:(CGRect)frame;

//仮コンテンツ
@property(nonatomic, retain) UILabel *label_A;
@property(nonatomic, retain) UILabel *label_B;
@end
