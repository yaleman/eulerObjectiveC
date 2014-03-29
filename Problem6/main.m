//
//  main.m
//  Problem6
//
//  Created by James Hodgkinson on 29/03/2014.
//  Copyright (c) 2014 James Hodgkinson. All rights reserved.
//
/*
 Problem 6
 The sum of the squares of the first ten natural numbers is,
 
 12 + 22 + ... + 102 = 385
 The square of the sum of the first ten natural numbers is,
 
 (1 + 2 + ... + 10)2 = 552 = 3025
 Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
 
 Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
 
 
 Answer:
 25164150

 */
#import <Foundation/Foundation.h>
#import "eulertools.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        unsigned long int sumsq = 0;
        unsigned long int sum = 0;
        unsigned int maxnum = 100;
        for( unsigned int i = 1; i <= maxnum; i++ ){
            sumsq += ( i * i );
            sum += i;
        }
        unsigned long int squaresum = sum * sum;
        NSLog( @"Difference between %lu and %lu is %lu", sumsq, squaresum, ( squaresum - sumsq ) );
    }
    return 0;
}

