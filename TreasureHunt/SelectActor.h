//
//  SelectActor.h
//  TreasureHunt
//
//  Created by xj on 11-11-21.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "AFOpenFlowView.h"
@interface SelectActor : UIViewController <AFOpenFlowViewDataSource,AFOpenFlowViewDelegate>
{
    NSOperationQueue *loadImagesOperationQueue;
    UIButton *_pbt;
    UILabel *_SelectName;
    //NSArray *pNameSelect;
}
@end

