//
//  eulertools.h
//  EulerObjC
//
//  Created by James Hodgkinson on 29/03/2014.
//  Copyright (c) 2014 James Hodgkinson. All rights reserved.
//

#ifndef EulerObjC_eulertools_h
#define EulerObjC_eulertools_h

// definitions
NSString *IntToString( int );
bool isPalindrome( int  );
bool isPrime( unsigned long int );
NSString *boolToString( bool );

// actual functions

NSString *IntToString( int number ){
    NSString *retval = [NSString stringWithFormat:@"%d", number];
    return retval;
}

bool isPalindrome( int number ) {
    //  NSLog( @"Testing %d", number );
    NSString *numstr = IntToString( number );
    // NSLog( @"String version: %@", numstr );
    bool testval = true;
    unsigned long strlen = [numstr length];
    if( strlen >= 2 ){
        // innocent until proven guilty :)
        //       bool test = true;
        char start;
        char end;
        unsigned long i = 0;
        while( i < ( strlen / 2 ) ){
            //for( unsigned long int i = 0; i < strlen / 2; i++ ){
            // check if it's a palindrome, fail out if not
            start = [numstr characterAtIndex:i];
            end = [numstr characterAtIndex:(strlen-i)-1];
            if( start != end  ){
                testval = false;
                i = strlen;
                //   NSLog( @"Failed %@ %c/%c", numstr, start, end );
                
            }
            i++;
        }
    }
    return testval;
}

bool isPrime( unsigned long int num ){
    // returns a bool testing if num is a prime

    // 2 and 3 are primes
    if( num == 2 || num == 3 ){
        return true;
    }
    // divisible by 2 or three? nope.
    else if( num % 2 == 0 || num % 3 == 0 ){
        return false;
        }
    // test other things
    else {
        static unsigned long int i;
        // check for primality loop
        for( i = 5; i <= sqrt( num ); i += 2 ){
            // if it's divisible by a number, it's not prime.
            if( num % i == 0 ){
                return false;
                continue;
            }
        }
    }
    return true;
}

NSString *boolToString( bool test )
{
    NSString *retval = @"";
    if( test == true ){
        retval = @"True";
    }
    else{
        retval = @"False";
    }
    return retval;
}

#endif
