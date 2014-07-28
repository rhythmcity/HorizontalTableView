//
//  RootViewController.m
//  HorizontalTableView
//
//  Created by 李言 on 14-7-25.
//  Copyright (c) 2014年 ___李言___. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
   
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    // Do any additional setup after loading the view.
    myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 568, 320) style:UITableViewStylePlain];
    myTableView.delegate = self;
    myTableView.dataSource = self;
    myTableView.rowHeight = 320.0;
    myTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    
    CGAffineTransform transform = CGAffineTransformMakeRotation(-M_PI_2);
    myTableView.transform = transform;
    CGRect contentRect = CGRectMake(0, 90, 320, 300);
    myTableView.frame = contentRect;
    myTableView.pagingEnabled = YES;
     [self.view addSubview:myTableView];
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{

    CGAffineTransform transform  = CGAffineTransformMakeRotation(M_PI_2);
    cell.transform = transform;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{


    return 320;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 20;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static  NSString * SimpleTableIdentifier = @"SimpleTableIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                             SimpleTableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                       reuseIdentifier: SimpleTableIdentifier];
    }
    cell.backgroundColor = [UIColor whiteColor];

    cell.textLabel.text =[NSString stringWithFormat:@"%d" , indexPath.row];
    NSLog(@"%@",cell);
    return cell;
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
