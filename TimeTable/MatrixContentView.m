//
//  MatrixContentView.m
//  TimeTable
//
//  Created by Naka Takahiro on 11/11/08.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "MatrixContentView.h"
#import "SubTableViewCell.h"

#import "SampleContent.h" //仮

@implementation MatrixContentView

@synthesize label_A;
@synthesize label_B;

- (id)initWithFrame:(CGRect)frame withCell:(SubTableViewCell* )aCell
{
  self = [super initWithFrame:frame];
  if (self) {
    cell = aCell;
    
    self.backgroundColor = [ UIColor clearColor];
    
    // Initialization code
    //仮コンテンツ
    //CGRect rect = CGRectMake(0, 10, 320/3,self.frame.size.height / 10);
    /*
    self.label_A = [[[UILabel alloc] initWithFrame:frame] autorelease];
    self.label_A.text = [NSString stringWithFormat:@"A:%@", cell.aMatrixContent.strArticle];
    
    self.label_A.textAlignment = UITextAlignmentLeft;
    self.label_A.backgroundColor = [UIColor clearColor];
    [self addSubview:self.label_A];
    
    self.label_B = [[[UILabel alloc] initWithFrame:frame] autorelease];
    self.label_B.text = @"B";
    self.label_B.textAlignment = UITextAlignmentRight;
    self.label_B.backgroundColor = [UIColor clearColor];
    [self addSubview:self.label_B];
     */
    
    NSLog(@"w,h=%f ,%f",frame.size.width, frame.size.height);
  }
  return self;
}

- (void)dealloc{
  self.label_A = nil;
  self.label_B = nil;
  
  [super dealloc];
}

- (void)drawRect:(CGRect)rect{
  
  NSLog(@"%@",cell.aMatrixContent.strArticle);
  
  /*
  self.label_A.frame = rect;
  

  self.label_B.frame = rect;
   */
  
  //[super drawRect:rect];
}



@end
