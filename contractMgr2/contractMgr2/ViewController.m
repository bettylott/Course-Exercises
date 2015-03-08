//
//  ViewController.m
//  contractMgr2
//
//  Created by Lisa Matter on 1/23/15.
//  Copyright (c) 2015 MSSE 650. All rights reserved.
//

#import "ViewController.h"

#import "Contact.h"
#import "ContactSvcCache.h"

@interface ViewController ()

@end

@implementation ViewController

ContactSvcCache *contactSvc = nil;

- (void)viewDidLoad {
    [super viewDidLoad];
    contactSvc = [[ContactSvcCache alloc] init];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)saveContact:(id)sender {NSLog(@"saveContact: entering");
    
    
    
    Contact *contact = [[Contact alloc] init];
    contact.name =_name.text;
    contact.phone =_phone.text;
    contact.email=_email.text;
    [contactSvc createContact: contact];
    
    [self.view endEditing: YES];
    
    [self.tableView reloadData];
    
    NSLog(@"saveContact: contact saved");
    
    
}

- (IBAction)deleteContact:(id)sender {NSLog(@"deleteContact");
    
    [self.view endEditing: YES];
}

-(NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[contactSvc retrieveAllContacts] count];
}

-(UITableViewCell*)tableView: (UITableView*) tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem"; UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: simpleTableIdentifier];
    if (cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    Contact *contact = [[contactSvc retrieveAllContacts] objectAtIndex: indexPath.row];
    
    cell.textLabel.text= [contact description];
    return cell;
}
@end
