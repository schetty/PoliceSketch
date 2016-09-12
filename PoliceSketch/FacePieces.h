//
//  FacePieces.h
//  PoliceSketch
//
//  Created by naomi schettini on 2016-09-12.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"

@interface FacePieces : NSObject


@property int currentEyes;
@property int currentNose;
@property int currentMouth;



-(instancetype) init;

+(NSArray *) eyesCollection;
+(NSArray *) noseCollection;
+(NSArray *) mouthCollection;

-(UIImage *) returnMouth;
-(UIImage *) nextMouth;
-(UIImage *) lastMouth;

-(UIImage *) returnEye;
-(UIImage *) nextEye;
-(UIImage *) lastEye;

-(UIImage *) returnNose;
-(UIImage *) nextNose;
-(UIImage *) lastNose;


@end
