//
//  main.m
//  Problem4
//
//  Created by James Hodgkinson on 29/03/2014.
//  Copyright (c) 2014 James Hodgkinson. All rights reserved.
//

/*
 Largest palindrome product
 Problem 4
 A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
 
 Find the largest palindrome made from the product of two 3-digit numbers.
 */

#import <Foundation/Foundation.h>
#import "eulertools.h"





int main(int argc, const char * argv[])
{

    @autoreleasepool {
        bool testval = isPalindrome( 22 );
        NSLog( @"Is 22 a palindrome? %@", boolToString( testval ) );
        testval = isPalindrome( 23 );
        NSLog( @"Is 23 a palindrome? %@", boolToString( testval ) );
        testval = isPalindrome( 101 ) ;
        NSLog( @"Is 101 a palindrome? %@", boolToString( testval ) );
        testval = isPalindrome( 123 );
        NSLog( @"Is 123 a palindrome? %@", boolToString( testval ) );
        testval = isPalindrome( 98901 );
        NSLog( @"Is 98901 a palindrome? %@", boolToString( testval ) );
        testval = isPalindrome( 906609 );
        
        NSLog( @"Is 906609 a palindrome? %@", boolToString( testval ) );
        unsigned int currentwinner = 0;
        unsigned int x = 1000;
        unsigned int y = 1000;
        unsigned int currtest = 0;
        int runs  = 0;
        while( y >= 99 ){
            x--;
            if( x == 98 ){
                y--;
                x = 1000;
                }
            currtest = x * y;
            testval = isPalindrome( currtest );
            
            if(  testval == true ){
                //NSLog( @"Found palindrome: %d", currtest);
                if( currtest > currentwinner ){
                    currentwinner = currtest;
                    NSLog( @"Found new winner: %d", currentwinner );
                    }
                }
            
            runs++;
            }
        
        NSLog( @"%d is the number you're looking for ", currentwinner );
        NSLog( @"Completed %d runs", runs );
    }
    return 0;
}

