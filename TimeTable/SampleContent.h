//
//  SampleContent.h
//  TimeTable
//
//  Created by Naka Takahiro on 11/11/08.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MatrixContent.h"

@interface SampleContent : NSObject< MatrixContent >

- (id)initWithString:(NSString *)str;

@property(nonatomic, retain) NSString *strArticle;

@end
