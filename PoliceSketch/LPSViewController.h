//
//  LPSViewController.h
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LPSViewController : UIViewController


@property (strong, nonatomic) IBOutlet UIImageView *eyesView;


@property (strong, nonatomic) IBOutlet UIImageView *noseView;


@property (strong, nonatomic) IBOutlet UIImageView *mouthView;



- (IBAction)nextEye:(UIButton *)sender;
- (IBAction)nextNose:(UIButton *)sender;
- (IBAction)nextMouth:(UIButton *)sender;
- (IBAction)lastEye:(UIButton *)sender;
- (IBAction)lastNose:(UIButton *)sender;
- (IBAction)lastMouth:(UIButton *)sender;




@end
