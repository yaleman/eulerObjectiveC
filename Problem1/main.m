//
//  problem1.m
//  EulerObjC
//
//  Created by James Hodgkinson on 28/03/2014.
//  Copyright (c) 2014 James Hodgkinson. All rights reserved.
/*
 Problem 1
 If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
 
 Find the sum of all the multiples of 3 or 5 below 1000.
 
 
 */
//


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        int sumN = 0;
        int i = 0;
        while( i < 1000 )
            {
                if( i % 3 == 0 || i % 5 == 0 )
                {
                    sumN += i;
                }
                i++;
            }
        NSLog( @"The sum was: %d", sumN );
        
    }
    return 0;
}

