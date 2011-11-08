//
//  MainTableViewCell.m
//  TableInTable
//
//  Created by Naka Takahiro on 11/11/04.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "MainTableViewCell.h"

@implementation MainTableViewCell

@synthesize index;
@synthesize normalView;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
      self.contentView.backgroundColor = [UIColor redColor];
    }
    return self;
}

- (void)dealloc{
  self.normalView = nil;
  //
  [super dealloc];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)normalizeContentView{
  //実験
  //self.contentView.transform = CGAffineTransformRotate(self.contentView.transform, M_PI / 2.0);
  
  //逆縁切り
  [self.normalView removeFromSuperview];
  
  CGRect rect = CGRectMake(0, 0, 320 / 3, 460); //仮
  self.normalView = [[[UIView alloc] initWithFrame:rect] autorelease];
  //self.normalView.backgroundColor = [UIColor brownColor];
  float dx = (rect.size.height-rect.size.width)/2.0;;
  float dy = -(rect.size.height-rect.size.width)/2.0;

  self.normalView.transform = CGAffineTransformTranslate(self.normalView.transform, dx, dy);
  self.normalView.transform = CGAffineTransformRotate(self.normalView.transform, M_PI / 2.0);

  [self.contentView addSubview:self.normalView];
}

@end
