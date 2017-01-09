//
//  AppDelegate.m
//  DelegatesTest
//
//  Created by Denis Mordvinov on 09.01.17.
//  Copyright © 2017 Rosberry. All rights reserved.
//

#import "AppDelegate.h"
#import "DMDoctor.h"
#import "DMPatient.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    DMPatient *patient1 = [[DMPatient alloc] init];
    patient1.name = @"Vova";
    patient1.temperature = 36.6f;
    
    
    
    DMPatient *patient2 = [[DMPatient alloc] init];
    patient2.name = @"Petya";
    patient2.temperature = 40.2f;
    
    
    DMDoctor *doctor = [[DMDoctor alloc] init];
    
    patient1.delegate = doctor;
    patient2.delegate = doctor;
    
    
    
    [patient1 howAreYou];
    [patient2 howAreYou];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
   
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
