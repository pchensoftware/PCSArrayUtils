//====================================================================================================
// Author: Peter Chen
// Created: 6/11/14
// Copyright 2014 pchensoftware
//====================================================================================================

#import <Foundation/Foundation.h>


@interface NSArray (PCSUtils)

- (id)safeObjectAtIndex:(NSUInteger)index;
- (NSArray *)convert:(id(^)(id element))conversionBlock;

@end
