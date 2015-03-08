//
//  ViewController.h
//  contractMgr2
//
//  Created by Lisa Matter on 1/23/15.
//  Copyright (c) 2015 MSSE 650. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
        <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *name;

@property (weak, nonatomic) IBOutlet UITextField *phone;

@property (weak, nonatomic) IBOutlet UITextField *email;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

- (IBAction)saveContact:(id)sender;

- (IBAction)deleteContact:(id)sender;



@end
