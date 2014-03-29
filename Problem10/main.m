//
//  main.m
//  Problem10
//
//  Created by James Hodgkinson on 29/03/2014.
//  Copyright (c) 2014 James Hodgkinson. All rights reserved.
//
/*
 Problem 10
 The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
 
 Find the sum of all the primes below two million.
 
 
 Answer:
 142913828922
*/

#import <Foundation/Foundation.h>
#import "eulertools.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        int maxprime = 2000000;
        bool test = false;
        unsigned long int sum = 0;
        for( unsigned long int i = 2; i < maxprime; i++ ){
            test = isPrime( i );
            if( test == true ){
                sum += i;
                }
            
            }
        NSLog( @"Sum: %lu", sum );

    }
    return 0;
}

