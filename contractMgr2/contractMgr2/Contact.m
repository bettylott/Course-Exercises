//
//  Contact.m
//  contractMgr2
//
//  Created by Lisa Matter on 1/23/15.
//  Copyright (c) 2015 MSSE 650. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (NSString *) description {
    return [NSString stringWithFormat: @"%@ %@ %@",
            _name, _phone, _email];
}

@end
