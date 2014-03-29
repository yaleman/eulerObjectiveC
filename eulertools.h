//
//  eulertools.h
//  EulerObjC
//
//  Created by James Hodgkinson on 29/03/2014.
//  Copyright (c) 2014 James Hodgkinson. All rights reserved.
//

#ifndef EulerObjC_eulertools_h
#define EulerObjC_eulertools_h

bool isPrime( unsigned long int num ){

    double maxtest = num / 2 + 1.0;
    //NSLog( @"Prime testing %lu up to %lu", num, maxtest );
    
    bool retval = true;
    // 2 and 3 are primes
    if( num == 2 || num == 3 ){
        nil;
    }
    // divisible by 2 or three? nope.
    else if( num % 2 == 0 || num % 3 == 0 ){
        retval = false;
        }
    // test other things
    else {
        static unsigned long int i;
        for( i = 5; i <= maxtest; i += 2 ){
            if( num % i == 0.0 )
            {
                retval = false;
                //NSLog( @"Found %lu to be not prime!", num );
                continue;
            }
        }
    }
    
    return retval;
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
