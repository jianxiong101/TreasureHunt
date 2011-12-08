//
//  ViewController.m
//  TreasureHunt
//
//  Created by xj on 11-11-21.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "SelectActor.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"bg_login.png"]];
    UILabel *Title1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 310, 0)];
    UIImage *image=[UIImage imageNamed:@"Title.png"];
    [Title1 setBackgroundColor:[[UIColor alloc] initWithPatternImage:image]];
     

    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    Title1.frame = CGRectMake(0, 50, 310, 200);
    Title1.transform = CGAffineTransformIdentity;  
    [self.view addSubview:Title1];
    [UIView commitAnimations];
    
    
    UILabel *Title2 = [[UILabel alloc] initWithFrame:CGRectMake(85, 500, 150, 30)];
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationDuration:1.0];
    //[UIView setAnimationTransition: UIViewAnimationTransitionCurlDown forView: Title2 cache:YES];
    
    CGRect rect = CGRectMake(320,0, 320, 30);//创建矩形框
    UIImage *pMyImage=[UIImage imageWithCGImage:CGImageCreateWithImageInRect([image CGImage], rect)];
    
    Title2.frame=CGRectMake(85, 400, 150, 30);
    [Title2 setBackgroundColor:[[UIColor alloc] initWithPatternImage:pMyImage]];
    
    Title2.transform = CGAffineTransformIdentity;  
   
    [self.view addSubview:Title2];
    [UIView commitAnimations];
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:2.0];
    [UIView setAnimationRepeatCount:10000];

     Title2.alpha=0;
     Title2.alpha=1;
     Title2.alpha=0.5;
     Title2.alpha=0.6;
    Title2.alpha=0.7;
    [UIView commitAnimations];
    
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch=[touches anyObject];
    CGPoint originalPoint = [touch locationInView:self.view];
    
    if([self IsContainPos:originalPoint])
    {
      
    }
    
    
}
-(bool)IsContainPos:(CGPoint)pos
{
    CGRect rc=CGRectMake(85, 400, 150, 30);
    if((pos.x>85)&&(pos.x<85+150))
    {
      if((pos.y>400)&&(pos.y<400+30))
      {
          return YES;
      }
    }
     
    return NO;

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
    //Do not supported orientantions
    return NO;
    
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
