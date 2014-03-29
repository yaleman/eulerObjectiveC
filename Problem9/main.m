//
//  main.m
//  Problem9
//
//  Created by James Hodgkinson on 29/03/2014.
//  Copyright (c) 2014 James Hodgkinson. All rights reserved.
//
/*
 Problem 9
 A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
 
 a2 + b2 = c2
 For example, 32 + 42 = 9 + 16 = 25 = 52.
 
 There exists exactly one Pythagorean triplet for which a + b + c = 1000.
 Find the product abc.
 
 
 Answer:
 31875000

 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int a = 0;
        int b = 0;
        int c = 0;
        int as; int bs; int cs;
        bool found = false;;
        // first loop
        for( a = 1; a < 997; a++ ){
            // second loop
            for( b = 2; b <= 997; b++ ){
                // third loop
                for( c = 3; c <= 997; c++ ){
                    // check the sum
                    if( a + b + c == 1000 ){
                        as = a * a;
                        bs = b * b;
                        cs = c * c;
                        if( as + bs == cs ){
                            found = true;
                            NSLog( @"%d", (a * b * c ) );
                            continue;
                        }
                    }
                }
                if( found == true ){
                    continue;
                }
            }
            if( found == true ){
                continue;
            }
        }
    }
    return 0;
}

