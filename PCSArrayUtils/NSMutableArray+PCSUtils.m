//====================================================================================================
// Author: Peter Chen
// Created: 6/14/14
// Copyright 2014 Hidoodle
//====================================================================================================

#import "NSMutableArray+PCSUtils.h"


@implementation NSMutableArray (PCSUtils)

- (void)moveObjectFromIndex:(int)fromIndex toIndex:(int)toIndex {
   id objectToMove = [self objectAtIndex:fromIndex];
   
   [self removeObjectAtIndex:fromIndex];
   [self insertObject:objectToMove atIndex:toIndex];
}

@end
