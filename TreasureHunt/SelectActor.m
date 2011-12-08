//
//  SelectActor.m
//  TreasureHunt
//
//  Created by xj on 11-11-21.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import "SelectActor.h"

@implementation SelectActor

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"MapWorld.png"]];
        
         
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


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    loadImagesOperationQueue = [[NSOperationQueue alloc] init];
    
    AFOpenFlowView *pflow = [[AFOpenFlowView alloc] initWithFrame:CGRectMake(0,20,320,480)];
    
	NSString *imageNamesrc;
	for (int i=0; i<4; i++) 
    {
		imageNamesrc = [[NSString alloc] initWithFormat:@"%d.png", i];
        
		[pflow setImage:[UIImage imageNamed:imageNamesrc] forIndex:i];
        
		[imageNamesrc release];
        
		NSLog(@"%d is the index",i);
        
	}
    pflow.viewDelegate=self;   
    pflow.dataSource=self;  
    
	[pflow setNumberOfImages:4];
    
    [self.view addSubview:pflow];
    
    _pbt = [[UIButton alloc] initWithFrame:CGRectMake(200,410,80,30)];
    [_pbt setBackgroundColor:[UIColor blueColor]];
    [_pbt setTitle:@"决定" forState:0];
    
    [self.view addSubview:_pbt];
    
    _SelectName = [[UILabel alloc] initWithFrame:CGRectMake((320-100)/2, 480-100, 100,40)];
    [_SelectName setBackgroundColor:[UIColor blackColor]]; 
    _SelectName.text=@"太郎";
    _SelectName.textAlignment=UITextAlignmentCenter;
    _SelectName.textColor=[UIColor whiteColor];
    _SelectName.layer.cornerRadius = 10;
    _SelectName.layer.masksToBounds = YES;
    
    [self.view addSubview:_SelectName];
}

// delegate protocol to tell which image is selected
- (void)openFlowView:(AFOpenFlowView *)openFlowView selectionDidChange:(int)index{
    
	NSLog(@"%d is selected change",index);
    NSArray *pNameSelect = [NSArray arrayWithObjects:@"太郎",@"小妹",@"大熊",@"小狗",nil];
    //NSString *p=[pNameSelect objectAtIndex:index];
    _SelectName.text=[pNameSelect objectAtIndex:index];
}

// setting the image 1 as the default pic
- (UIImage *)defaultImage{
    
	return [UIImage imageNamed:@"cover_1.jpg"];
}
- (void)openFlowView:(AFOpenFlowView *)openFlowView requestImageForIndex:(int)index{   
    NSLog(@">>request index %i",index);   
} 

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
