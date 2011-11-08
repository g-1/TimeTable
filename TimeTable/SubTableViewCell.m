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
    //仮コンテンツ
    CGRect rect = CGRectMake(0, 0, 320/3,46);
    UILabel *label_A = [[[UILabel alloc] initWithFrame:rect] autorelease];
    label_A.text = [NSString stringWithFormat:@"A"];
    label_A.textAlignment = UITextAlignmentLeft;
    label_A.backgroundColor = [UIColor clearColor];
    [self.contentView addSubview:label_A];
    
    UILabel *label_B = [[[UILabel alloc] initWithFrame:rect] autorelease];
    label_B.text = @"B";
    label_B.textAlignment = UITextAlignmentRight;
    label_B.backgroundColor = [UIColor clearColor];
    [self.contentView addSubview:label_B];

  }
  return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  [super setSelected:selected animated:animated];
  
  // Configure the view for the selected state
}

@end
