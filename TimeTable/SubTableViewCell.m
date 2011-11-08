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
    // Initialization code
    //仮コンテンツ
    /*
    CGRect rect = CGRectMake(0, 0, 10,10);
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
     */
    self.matrixContentView = [[MatrixContentView alloc] initWithFrame:self.contentView.frame withCell:self];
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
