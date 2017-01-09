//
//  DMDoctor.m
//  DelegatesTest
//
//  Created by Denis Mordvinov on 09.01.17.
//  Copyright © 2017 Rosberry. All rights reserved.
//

#import "DMDoctor.h"

@implementation DMDoctor


#pragma  mark - DMPatientDelegate

-(void)patientFeelsBad:(DMPatient *)patient{
    
    NSLog(@"Patient feels bad %@", patient.name);
    
    if (patient.temperature >37.f && patient.temperature<39.f){
        
        [patient takePill];
        
    }else if (patient.temperature>=39.f){
        
        [patient makeShot];
        
    }else {
        
        
        NSLog(@"Patient %@ should rest", patient.name);
    }
    
}
-(void)patient:(DMPatient *)patient hasQuestion: (NSString *)question{
    
    NSLog(@"PAtient %@ has a queastion: %@", patient.name, question);
    
}

@end
