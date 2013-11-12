//
//  ViewController.h
//  iDea Lantern
//
//  Created by Patricia Muñoz Quiros on 11/11/13.
//  Copyright (c) 2013 Israel Diaz Ortiz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController {
    
    SystemSoundID SoundID;
    SystemSoundID Sound2ID;
    
}


@property (weak, nonatomic) IBOutlet UIImageView *bombillaOf;

- (IBAction)botonOf1:(id)sender;
- (IBAction)botonOf2:(id)sender;
- (IBAction)botonOf3:(id)sender;

@end
