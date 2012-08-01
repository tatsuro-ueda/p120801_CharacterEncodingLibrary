//
//  ViewController.m
//  CharacterEncoding
//
//  Created by 達郎 植田 on 12/08/01.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "NSString+Encode.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize textField;
@synthesize textView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    textField.text = @"http://business.nikkeibp.co.jp/article/NBD/20120727/235043/?ST=pc";
}

- (void)viewDidUnload
{
    [self setTextView:nil];
    [self setTextField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)submit:(id)sender {
    NSURL *u = [NSURL URLWithString:textField.text];
    NSString *s = [NSString encodedStringWithContentsOfURL:u];
    textView.text = s;
}
@end
