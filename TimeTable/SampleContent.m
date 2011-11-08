//
//  SampleContent.m
//  TimeTable
//
//  Created by Naka Takahiro on 11/11/08.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "SampleContent.h"

@implementation SampleContent

@synthesize strArticle;

- (id)initWithString:(NSString *)str
{
  self = [super init];
  if(self){
    self.strArticle = str;
  }
  return self;
}

- (void)dealloc{
  
  [super dealloc];
}

- (void)test{
}

@end
