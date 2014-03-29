//
//  main.m
//  Problem12
//
//  Created by James Hodgkinson on 29/03/2014.
//  Copyright (c) 2014 James Hodgkinson. All rights reserved.
//
/*
 The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:
 
 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
 
 Let us list the factors of the first seven triangle numbers:
 
 1: 1
 3: 1,3
 6: 1,2,3,6
 10: 1,2,5,10
 15: 1,3,5,15
 21: 1,3,7,21
 28: 1,2,4,7,14,28
 We can see that 28 is the first triangle number to have over five divisors.
 
 What is the value of the first triangle number to have over five hundred divisors?
 
 
 Answer:
 76576500

 */
#import <Foundation/Foundation.h>
#import "eulertools.h"

unsigned long numDivisors( unsigned long num ){
    // return the count of divisors for num
    unsigned long int i = 2;
    unsigned int divisors = 0;
    for( i = 2; i < sqrt( num ) + 1; i++ ){
        if( num % i == 0 ){
            divisors += 2;
        }
    }
    return divisors;
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        int maxdivisors = 500;
        unsigned long divisors = 0;
        bool found = false;
        unsigned long trinum = 0;
        for( unsigned long i = 1; found == false; i++ ){
            trinum += i;
            divisors = numDivisors( trinum );
            if( divisors > maxdivisors ){
                NSLog( @"%lu\t%lu", trinum, divisors );
                
                found = true;
                continue;
            }
            if( i % 1000 == 0 ){
                NSLog( @"%lu %lu", i, trinum );
            }
        }
        
    }
    return 0;
}
