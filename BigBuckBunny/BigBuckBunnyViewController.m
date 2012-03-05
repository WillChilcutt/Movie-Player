//
//  BigBuckBunnyViewController.m
//  BigBuckBunny
//
//  Created by Will Chilcutt on 3/5/12.
//  Copyright (c) 2012 ETSU. All rights reserved.
//

#import "BigBuckBunnyViewController.h"

@implementation BigBuckBunnyViewController


-(IBAction)playMovie:(id)sender
{
    NSString *filepath = [[NSBundle mainBundle] pathForResource:@"big-buck-bunny-clip" ofType:@"m4v"];
    
    NSURL *fileURL = [NSURL fileURLWithPath:filepath];
    
    
    MPMoviePlayerViewController *moviePlayerViewController = [[MPMoviePlayerViewController alloc] initWithContentURL:fileURL];
    
    moviePlayerViewController.view.frame = self.view.bounds;
    [self.view addSubview:moviePlayerViewController.view];
    [self presentMoviePlayerViewControllerAnimated:moviePlayerViewController];
    moviePlayerViewController.moviePlayer.controlStyle = MPMovieControlStyleFullscreen;
    moviePlayerViewController.moviePlayer.shouldAutoplay = YES;
    [moviePlayerViewController.moviePlayer prepareToPlay];
    moviePlayerViewController.moviePlayer.fullscreen = YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
