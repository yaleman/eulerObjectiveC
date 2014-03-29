//
//  main.m
//  Problem3
//
//  Created by James Hodgkinson on 28/03/2014.
//  Copyright (c) 2014 James Hodgkinson. All rights reserved.
//
/*
 Problem 3
 The prime factors of 13195 are 5, 7, 13 and 29.
 
 What is the largest prime factor of the number 600851475143 ?
 */

#import <Foundation/Foundation.h>
#import "eulertools.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        long bignum = 600851475143;
        // insert code here...
        NSLog(@"Bignum: %0.0ld", bignum);

        int maxfac = sqrt( bignum ) + 2;
        if( maxfac % 2 == 0 ){
            maxfac++;
        }
        bool testPrime = false;
        while( testPrime == false ){
            maxfac-= 2;
            if( bignum % maxfac == 0 ){
                NSLog( @"found a divisor: %d", maxfac );
                testPrime = isPrime( maxfac );
            }
            
            
        }
        NSLog( @"Maximum factor of %ld is %d", bignum, maxfac );
    }
    return 0;
}

