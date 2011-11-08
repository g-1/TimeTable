//
//  SubTableViewCell.m
//  TimeTable
//
//  Created by Naka Takahiro on 11/11/07.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "SubTableViewCell.h"

#import "MatrixContentView.h"

@implementation SubTableViewCell

@synthesize matrixContentView;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
  self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
  if (self) {
    self.matrixContentView = [[[MatrixContentView alloc] initWithFrame:self.contentView.frame withCell:self] autorelease];
    [self.contentView addSubview:self.matrixContentView];

  }
  return self;
}

- (void)dealloc{
  
  self.matrixContentView = nil;
  //
  [super dealloc];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  [super setSelected:selected animated:animated];
  
  // Configure the view for the selected state
}

@end
