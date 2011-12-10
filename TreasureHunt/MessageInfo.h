//
//  MessageInfo.h
//  TreasureHunt
//
//  Created by Jian Xiong on 11-12-9.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MessageInfo : NSObject{
    NSInteger _index;

}
-(NSInteger)GetIndex;
-(void)SetIndex:(NSInteger)index;
@end
