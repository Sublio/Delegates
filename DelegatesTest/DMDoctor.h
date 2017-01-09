//
//  DMDoctor.h
//  DelegatesTest
//
//  Created by Denis Mordvinov on 09.01.17.
//  Copyright © 2017 Rosberry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMPatient.h"

@protocol DMPatientDelegate;


@interface DMDoctor : NSObject <DMPatientDelegate>



@end
