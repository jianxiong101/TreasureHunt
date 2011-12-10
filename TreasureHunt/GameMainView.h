//
//  GameMainView.h
//  TreasureHunt
//
//  Created by Jian Xiong on 11-12-9.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ScrollviewItem.h"
@interface GameMainView : UIViewController{

    NSInteger _index;
  
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil index:(NSInteger)interIndex;
@end
