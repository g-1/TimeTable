//
//  SubTableView.m
//  TableInTable
//
//  Created by Naka Takahiro on 11/11/04.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#include "Common.h"
#import "SubTableView.h"

#import "SubTableViewCell.h"
#import "MatrixContentView.h"

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
    cell.contentView.frame = CGRectMake(0, 0, self.table.frame.size.width, 0);//重要
  }
  
  // Configure the cell...
  if( indexPath.row % 2 ){
    cell.contentView.backgroundColor = [UIColor greenColor];
  }
  else{
    cell.contentView.backgroundColor = [UIColor grayColor];
  }
  
  return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
  //一律
  return self.frame.size.height / 10;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
  //cellのコンテントビューの調整はここで可能
  //2重テーブルのキモ
  //独自のコンテントビューを作成した場合はこのタイミングでframeをアップデートする
  //既にcellの幅を調整済みなら上記は不要
  CGRect rect = cell.contentView.frame;

  [((SubTableViewCell *)cell).matrixContentView updateFrame:rect];
}


/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect
 {
 // Drawing code
 }
 */

#pragma mark - UIScrollViewDelegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
  //移動量をポスト
  [[NSNotificationCenter defaultCenter] postNotificationName:SYNC_CONTENT_OFFSET object:scrollView];
}

@end
