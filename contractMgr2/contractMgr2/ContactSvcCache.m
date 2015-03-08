//
//  ContactSvcCache.m
//  contractMgr2
//
//  Created by Lisa Matter on 1/23/15.
//  Copyright (c) 2015 MSSE 650. All rights reserved.
//

#import "ContactSvcCache.h"

@implementation ContactSvcCache

NSMutableArray *contacts = nil;

-(id) init{
    if (self = [super init]) {
        contacts = [NSMutableArray array];
        return self;
    }
    return nil;
}

-(Contact*) createContact:(Contact*) contact{
    [contacts addObject: contact];
    return contact;
}

-(NSMutableArray*) retrieveAllContacts{
    return contacts;
}

-(Contact*) updateContact:(Contact*) contact{
    return contact;
}

-(Contact*) deleteContact:(Contact*) contact{
    return contact;
}

@end
