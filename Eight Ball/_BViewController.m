//
//  _BViewController.m
//  Eight Ball
//
//  Created by Aaron Miller on 8/11/12.
//  Copyright (c) 2012 Aaron Miller. All rights reserved.
//

#import "_BViewController.h"
#include "stdlib.h"

@interface _BViewController ()

@end

@implementation _BViewController

@synthesize textLabel;
@synthesize responses;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    responses =[[NSArray alloc] initWithObjects:@"It is certain.",@"It is decidely so.",@"Wihtout a doubt.",@"Yes—Definitely.",@"You may rely on it.",@"As I see it, yes.",@"Most likely.",@"Outlook good.",@"Yes.",@"Signs point to yes.",@"Reply hazy, try again.",@"Ask again later.",@"Better not tell you now.",@"Cannot predict now.",@"Concentrate and ask again.",@"Don't count on it.",@"My reply is no.",@"My sources say no.",@"Outlook not so good.",@"Very doubtful.",nil];
}

- (BOOL) canBecomeFirstResponder
{
    return true;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super becomeFirstResponder];
}

- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    int random = arc4random() % 20;
    [textLabel setText:[responses objectAtIndex:random]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
