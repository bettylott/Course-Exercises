//
//  ContactSvc.h
//  contractMgr2
//
//  Created by Lisa Matter on 1/23/15.
//  Copyright (c) 2015 MSSE 650. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Contact.h"

@protocol ContactSvc <NSObject>

-(Contact*) createContact: (Contact*) contact;
-(NSMutableArray *) retrieveAllContacts;
-(Contact*) updateContact: (Contact*) contact;
-(Contact*) deleteContact: (Contact*) contact;

@end
