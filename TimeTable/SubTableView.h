//
//  SubTableView.h
//  TableInTable
//
//  Created by Naka Takahiro on 11/11/04.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SubTableView : UIView <UITableViewDelegate, UITableViewDataSource, UIScrollViewDelegate>

@property(nonatomic, retain) UITableView *table;
@property(nonatomic, assign) int no;

@end

