//
//  main.m
//  Problem5
//
//  Created by James Hodgkinson on 29/03/2014.
//  Copyright (c) 2014 James Hodgkinson. All rights reserved.
//
/*
 Problem 5
 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
 
 What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
 
 
 Answer:
 232792560

 */
#import <Foundation/Foundation.h>
#import "eulertools.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        int maxnum = 20;
        unsigned long int testnum = 2;
        bool found = false;
        // it's being used in for loops, but we only need to define it once :)
        int i;
        bool test;
        // main test loop
        while( found == false ){
            // test the next number
            testnum++;
            // reset the tests
            test = true;
            // check for divisors
            while( test == true && found == false ){
                // loop through
                for( i = 2; i <= maxnum; i++ ){
                    if( testnum % i != 0 ){
                        test = false;
                        i = maxnum + 1;
                    }
                }
                // if it's still true at that point, woo!
                if( test == true ){
                    found = true;
                    NSLog( @"Found it: %lu", testnum );
                    }
            }
        }
        
        
    }
    return 0;
}

