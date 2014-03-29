//
//  main.m
//  Problem7
//
//  Created by James Hodgkinson on 29/03/2014.
//  Copyright (c) 2014 James Hodgkinson. All rights reserved.
//
/*
 Problem 7
 By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
 
 What is the 10 001st prime number?
 
 
 Answer:
 104743
*/

#import <Foundation/Foundation.h>
#import "eulertools.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //NSMutableArray *knownprimes = [NSMutableArray new];
        unsigned int numprimes = 10001;
        unsigned int primecount = 0;
        unsigned long int testnum = 1;
        bool testval = false;
        while( primecount < numprimes ){
            testnum++;
            testval = isPrime( testnum );
            if( testval == true ){
                //[knownprimes addObject:[NSNumber numberWithUnsignedLong:testnum]];
                primecount++;
                //NSLog( @"%lu", testnum );
            }

        }
        NSLog( @"Prime #%u is %lu", numprimes, testnum );
    }
    return 0;
}

