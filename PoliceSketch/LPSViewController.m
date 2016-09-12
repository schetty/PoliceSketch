//
//  LPSViewController.m
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPSViewController.h"
#import "UIKit/UIKit.h"
#import "FacePieces.h"

@interface LPSViewController ()

@property (nonatomic) FacePieces *face;

@end

@implementation LPSViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.face = [[FacePieces alloc] init];
    
}
- (IBAction)nextEye:(UIButton *)sender {
    
    [self.eyesView setImage:[self.face nextEye]];
}

- (IBAction)nextNose:(UIButton *)sender {
    [self.noseView setImage:[self.face nextNose]];
}

- (IBAction)nextMouth:(UIButton *)sender {
    [self.mouthView setImage:[self.face nextMouth]];
}
- (IBAction)lastEye:(UIButton *)sender {
    [self.eyesView setImage:[self.face lastEye]];

}
- (IBAction)lastNose:(UIButton *)sender {
    [self.noseView setImage:[self.face lastNose]];
}

- (IBAction)lastMouth:(UIButton *)sender {
    [self.mouthView setImage:[self.face lastMouth]];
}



@end
