//
//  GameMainView.m
//  TreasureHunt
//
//  Created by Jian Xiong on 11-12-9.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import "GameMainView.h"

@implementation GameMainView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil index:(NSInteger)interIndex
{

    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self.view setBackgroundColor:[UIColor blackColor]];
        _index=interIndex;
        self.view.frame = CGRectMake(0,0,320,480);
                
    }
    return self;

}
- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/

#define SPACEICON 10
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
     UILabel *Title2 = [[UILabel alloc] initWithFrame:CGRectMake(85, 500, 150, 30)];
    [Title2 setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:Title2];
    
    ScrollviewItem *pv1 = [[ScrollviewItem alloc] initWithImage:[UIImage imageNamed:@"IconHead.png"]];
    ScrollviewItem *pv2 = [[ScrollviewItem alloc] initWithImage:[UIImage imageNamed:@"IconHead.png"]];
    ScrollviewItem *pv3 = [[ScrollviewItem alloc] initWithImage:[UIImage imageNamed:@"IconHead.png"]];
    ScrollviewItem *pv4 = [[ScrollviewItem alloc] initWithImage:[UIImage imageNamed:@"IconHead.png"]];
    
    pv1.frame = CGRectMake(0,0,50,50);    
    pv2.frame = CGRectMake(50+SPACEICON,0,50,50);
    pv3.frame = CGRectMake(100+2*SPACEICON,0,50,50);
    pv4.frame = CGRectMake(150+3*SPACEICON,0,50,50);
    
    UIScrollView *mainView = [[UIScrollView alloc] initWithFrame:CGRectMake(0,480-50-20,320,50)];
    mainView.directionalLockEnabled = YES;
    mainView.pagingEnabled = YES;
    //mainView.backgroundColor = [UIColor blueColor];
    mainView.showsVerticalScrollIndicator = NO;
    mainView.showsHorizontalScrollIndicator = NO;
    
    CGSize newSize = CGSizeMake(50*10,50);
    
    [mainView setContentSize:newSize];
    
    [mainView addSubview:pv1];
    [mainView addSubview:pv2];
    [mainView addSubview:pv3];
    [mainView addSubview:pv4];
    
    [self.view addSubview:mainView];
    
}

/*
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
   
}
*/
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
