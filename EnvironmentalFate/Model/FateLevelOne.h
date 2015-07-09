//
//  FateLevelOne.h
//  EnvironmentalFate
//
//  Created by Stephen Wood on 2015-05-03.
//  Copyright (c) 2015 Stephen Wood. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Chemical.h"

@interface FateLevelOne : NSObject

// How to define a struct that can be used anywhere, once the file is imported...
struct UnitWorld { float waterVolume; float airVolume; float organicVolume; }; typedef struct UnitWorld UnitWorld;

// Can't use Objective-C objects in structs. oh well!
//struct Chemical { NSString *name; float logKaw; float logKow; float logKoa; }; typedef struct Chemical Chemical;

@property (nonatomic) float fractionInWater;
@property (nonatomic) float fractionInSoil;
@property (nonatomic) float fractionInOrganic;

- (instancetype)initWithChemical:(Chemical *)chemical withUnitWorld:(UnitWorld)unitWorld;
- (void) calculate;

@end
