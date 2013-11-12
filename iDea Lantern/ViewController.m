//
//  ViewController.m
//  iDea Lantern
//
//  Created by Patricia Muñoz Quiros on 11/11/13.
//  Copyright (c) 2013 Israel Diaz Ortiz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize bombillaOf;

- (void)viewDidLoad
{

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSURL *buttonURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"game_over" ofType:@"mp3"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)buttonURL, &SoundID);
    
    NSURL *button2URL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"ganar" ofType:@"mp3"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)button2URL, &Sound2ID);
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)botonOf1:(id)sender {
    UIImage *bombilla = [UIImage imageNamed:@"bombilla_on.png"];
    [bombillaOf setImage:bombilla];
    
    AudioServicesPlaySystemSound(Sound2ID);
    AudioServicesDisposeSystemSoundID(SoundID);
    
    
}

- (IBAction)botonOf2:(id)sender {
    UIImage *bombilla1 = [UIImage imageNamed:@"bombilla_mala1.png"];
    [bombillaOf setImage:bombilla1];
    
    AudioServicesPlaySystemSound(SoundID);
    AudioServicesDisposeSystemSoundID(Sound2ID);
    
}

- (IBAction)botonOf3:(id)sender {
    UIImage *bombilla2 = [UIImage imageNamed:@"bombilla_mala2.png"];
    [bombillaOf setImage:bombilla2];
    
    AudioServicesPlaySystemSound(SoundID);
    AudioServicesDisposeSystemSoundID(Sound2ID);
   
    
}

@end
