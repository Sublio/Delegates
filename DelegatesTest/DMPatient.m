//
//  DMPatient.m
//  DelegatesTest
//
//  Created by Denis Mordvinov on 09.01.17.
//  Copyright © 2017 Rosberry. All rights reserved.
//

#import "DMPatient.h"

@implementation DMPatient

-(void)takePill{
    
    
    NSLog(@"Patient %@ takes pill", self.name);
    
}
-(void)makeShot{
    
    NSLog(@"Patient %@ makes shot", self.name);
    
}

-(BOOL)howAreYou{
    
    
    BOOL iFeelGood = arc4random() %2;
    
    if (!iFeelGood){
        
        [self.delegate patientFeelsBad:self];
    }
    
    return iFeelGood;
}

@end
