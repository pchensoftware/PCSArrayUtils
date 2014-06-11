//====================================================================================================
// Author: Peter Chen
// Created: 6/11/14
// Copyright 2014 pchensoftware
//====================================================================================================

#import "NSArray+PCSUtils.h"


@implementation NSArray (PCSUtils)

- (id)safeObjectAtIndex:(NSUInteger)index {
   if ([self count] - 1 < index)
      return nil;
   
   return self[index];
}

@end
