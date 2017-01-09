//
//  DMPatient.h
//  DelegatesTest
//
//  Created by Denis Mordvinov on 09.01.17.
//  Copyright © 2017 Rosberry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "DMDoctor.h"

@protocol DMPatientDelegate;
@interface DMPatient : NSObject

@property(strong, nonatomic)NSString *name;
@property(assign, nonatomic) CGFloat temperature;
@property (weak, nonatomic) id  <DMPatientDelegate> delegate;

-(void)takePill;
-(void)makeShot;

-(BOOL)howAreYou;

@end


@protocol DMPatientDelegate 

@required

-(void)patientFeelsBad:(DMPatient *)patient; 
-(void)patient:(DMPatient *)patient hasQuestion: (NSString *)question;


@end
