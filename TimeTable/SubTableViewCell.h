//
//  SubTableViewCell.h
//  TimeTable
//
//  Created by Naka Takahiro on 11/11/07.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MatrixContentView;

@interface SubTableViewCell : UITableViewCell

@property(nonatomic, retain) MatrixContentView *matrixContentView;
@end
