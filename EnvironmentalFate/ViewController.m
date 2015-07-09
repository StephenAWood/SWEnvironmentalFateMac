//
//  ViewController.m
//  EnvironmentalFate
//
//  Created by Stephen Wood on 2015-05-03.
//  Copyright (c) 2015 Stephen Wood. All rights reserved.
//

#import "ViewController.h"
#import "FateLevelOne.h"
#import "Chemical.h"

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    UnitWorld unitWorld = {120.0f, 600038.0f, 1.0f};
    
    Chemical *chemical = [[Chemical alloc] init];
    chemical.name = @"Naphthalene";
    chemical.logKow = 3.30;
    chemical.logKoa = 5.19;
    chemical.logKaw = chemical.logKow - chemical.logKoa;
    
    FateLevelOne *calc = [[FateLevelOne alloc] initWithChemical:chemical withUnitWorld:unitWorld];
    
    [calc calculate];
    
    NSLog(@"%f", calc.fractionInOrganic);
    
    
    
    
    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end
