//
//  Chemical.h
//  EnvironmentalFate
//
//  Created by Stephen Wood on 2015-05-03.
//  Copyright (c) 2015 Stephen Wood. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Chemical : NSObject

//name
@property (strong, nonatomic) NSString *name;

// properties
@property (nonatomic) float logKow;
@property (nonatomic) float logKaw;
@property (nonatomic) float logKoa;
@property (nonatomic) float molecularWeight;

@end
