//
//  SubTableView.m
//  TableInTable
//
//  Created by Naka Takahiro on 11/11/04.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "SubTableView.h"

#import "SubTableViewCell.h"

static int serial = 0;

@implementation SubTableView

@synthesize table;
@synthesize no;

- (id)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if (self) {
    // Initialization code
    self.table = [[[UITableView alloc] initWithFrame:frame style:UITableViewStylePlain] autorelease];
    self.table.delegate = self;
    self.table.dataSource = self;
    [self addSubview:self.table];
    
    self.no = serial++;
  }
  return self;
}

- (void)dealloc{
  self.table = nil;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
  return 30;//仮
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
  static NSString *CellIdentifier = @"SubCell";
  
  SubTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
  if (cell == nil) {
    cell = [[[SubTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
  }
  
  // Configure the cell...
  if( indexPath.row % 2 ){
    cell.contentView.backgroundColor = [UIColor greenColor];
  }
  else{
    cell.contentView.backgroundColor = [UIColor grayColor];
  }
  
  //仮コンテンツ
  CGRect rect = CGRectMake(0, 0, 320/3,self.frame.size.height / 10);
  UILabel *label_A = [[[UILabel alloc] initWithFrame:rect] autorelease];
  label_A.text = [NSString stringWithFormat:@"A:%d", self.no];
  label_A.textAlignment = UITextAlignmentLeft;
  label_A.backgroundColor = [UIColor clearColor];
  [cell.contentView addSubview:label_A];
  
  UILabel *label_B = [[[UILabel alloc] initWithFrame:rect] autorelease];
  label_B.text = @"B";
  label_B.textAlignment = UITextAlignmentRight;
  label_B.backgroundColor = [UIColor clearColor];
  [cell.contentView addSubview:label_B];
  
  return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
  //一律
  return self.frame.size.height / 10;
}


/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect
 {
 // Drawing code
 }
 */

@end
