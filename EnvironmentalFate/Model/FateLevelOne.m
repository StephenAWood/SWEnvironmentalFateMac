//
//  FateLevelOne.m
//  EnvironmentalFate
//
//  Created by Stephen Wood on 2015-05-03.
//  Copyright (c) 2015 Stephen Wood. All rights reserved.
//

#import "FateLevelOne.h"
//#import "Math.h"


@interface FateLevelOne ()

@property (strong, nonatomic) Chemical *chemical;
@property (nonatomic) UnitWorld unitWorld;

@end

@implementation FateLevelOne

- (instancetype) initWithChemical:(Chemical *)chemical withUnitWorld:(UnitWorld)unitWorld {
    self = [super init];
    
    if (self) {
        self.chemical = chemical;
        self.unitWorld = unitWorld;
    }
    
    return self;
}

- (void) calculate {
    
    // Save typing
    float logKaw = self.chemical.logKaw;
    float logKow = self.chemical.logKow;
    float logKoa = self.chemical.logKoa;
    
    float airV = self.unitWorld.airVolume;
    float waterV = self.unitWorld.waterVolume;
    float orgV = self.unitWorld.organicVolume;
    
    self.fractionInOrganic = 1.0 / (1.0 + __exp10(-logKoa) * airV / orgV + __exp10(-logKow) * waterV / orgV);
    
}

@end
