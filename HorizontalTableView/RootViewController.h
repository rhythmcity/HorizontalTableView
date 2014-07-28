//
//  RootViewController.h
//  HorizontalTableView
//
//  Created by 李言 on 14-7-25.
//  Copyright (c) 2014年 ___李言___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    
    UITableView *myTableView;
}

@end
