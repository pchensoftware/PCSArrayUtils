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

- (NSArray *)convert:(id(^)(id element))conversionBlock {
   if (! conversionBlock)
      return self;
   
   NSMutableArray *output = [NSMutableArray array];
   for (id element in self) {
      id convertedElement = conversionBlock(element);
      if (convertedElement)
         [output addObject:convertedElement];
   }
   return output;
}

@end
