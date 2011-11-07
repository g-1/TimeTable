//
//  SubTableViewCell.m
//  TimeTable
//
//  Created by Naka Takahiro on 11/11/07.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "SubTableViewCell.h"

@implementation SubTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
  self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
  if (self) {
    // Initialization code
  }
  return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  [super setSelected:selected animated:animated];
  
  // Configure the view for the selected state
}

@end
