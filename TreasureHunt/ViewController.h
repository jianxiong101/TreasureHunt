//
//  ViewController.h
//  TreasureHunt
//
//  Created by xj on 11-11-21.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SelectActor.h"
#import "GameMainView.h"
@interface ViewController : UIViewController
{
    SelectActor *_pac;
    GameMainView *_gamemainview;
}
-(bool)IsContainPos:(CGPoint)pos;
-(bool)enterMianView:(NSNotification *)note;
@end
