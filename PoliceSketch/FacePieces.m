//
//  FacePieces.m
//  PoliceSketch
//
//  Created by naomi schettini on 2016-09-12.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "FacePieces.h"

@implementation FacePieces


- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentEyes = 0;
        _currentNose = 0;
        _currentMouth = 0;
    }
    return self;
}

///these class methods are methods that will return arrays when called on 

+ (NSArray *) eyesCollection {
    return [[NSArray alloc]initWithObjects:@"eyes_1.jpg",@"eyes_2.jpg", @"eyes_3.jpg", @"eyes_4.jpg", @"eyes_5.jpg", nil];
}

+ (NSArray *) noseCollection {
    return [[NSArray alloc]initWithObjects:@"nose_1.jpg", @"nose_2.jpg", @"nose_3.jpg", @"nose_4.jpg", @"nose_5.jpg", nil];
}

+ (NSArray *) mouthCollection {
    return [[NSArray alloc]initWithObjects:@"mouth_1.jpg",@"mouth_2.jpg", @"mouth_3.jpg", @"mouth_4.jpg", @"mouth_5.jpg", nil];
    
}

//EYES
- (UIImage *) returnEye {

    NSString *imageName = [[self.class eyesCollection] objectAtIndex:self.currentEyes];
    self.currentEyes - 1;
    return [UIImage imageNamed:imageName];
}

- (UIImage *) nextEye {
    self.currentEyes = self.currentEyes + 1;
    if (self.currentEyes >= [[FacePieces eyesCollection] count]) {
        self.currentEyes = 0;
    }
    return [self returnEye];
}
- (UIImage *) lastEye {
    self.currentEyes = self.currentEyes - 1;
    if (self.currentEyes < 0) {
        self.currentEyes = (int)[[FacePieces eyesCollection] count]-1;
    }
    return [self returnEye];
}

//NOSES
- (UIImage *) nextNose {
    self.currentNose = self.currentNose + 1;
    if (self.currentNose >= [[FacePieces noseCollection] count]) {
        self.currentNose = 0;
    }
    return [self returnNose];
}

- (UIImage *) lastNose {
    self.currentNose = self.currentNose - 1;
    if (self.currentNose < 0) {
        self.currentNose = (int)[[FacePieces noseCollection] count]-1;
    }
    return [self returnNose];
}

- (UIImage *) returnNose {

    NSString *imageName = [[self.class noseCollection] objectAtIndex:self.currentNose];
    
    return [UIImage imageNamed:imageName];
}


//MOUTHS
- (UIImage *) nextMouth {
    self.currentMouth = self.currentMouth + 1;
    if (self.currentMouth >= [[FacePieces mouthCollection]count]) {
        self.currentMouth = 0;
    }
    return [self returnMouth];
}

- (UIImage *) lastMouth {
    self.currentMouth = self.currentMouth - 1;
    if (self.currentMouth < 0) {
        self.currentMouth = (int)[[FacePieces mouthCollection] count]-1;
    }
    return [self returnMouth];
}

- (UIImage *) returnMouth {
    NSString *imageName = [[self.class mouthCollection] objectAtIndex:_currentMouth];
    return [UIImage imageNamed:imageName];
}
@end
