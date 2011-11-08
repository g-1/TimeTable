//
//  MainTableViewController.h
//  TableInTable
//
//  Created by Naka Takahiro on 11/11/04.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainTableViewController : UITableViewController

- (void)syncContentOffset:(NSNotification *)notification;

@property(nonatomic, retain) NSMutableArray *subTableViews;
@end
