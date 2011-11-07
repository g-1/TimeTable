//
//  MainTableViewCell.h
//  TableInTable
//
//  Created by Naka Takahiro on 11/11/04.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainTableViewCell : UITableViewCell

- (void)normalizeContentView;

@property(nonatomic, assign) int index;
@property(nonatomic, retain) UIView *normalView;

@end
