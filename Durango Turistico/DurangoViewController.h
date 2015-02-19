//
//  DurangoViewController.h
//  Durango Turistico
//
//  Created by Claudia Oliva on 09/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AddressBook/AddressBook.h>

@interface DurangoViewController : UIViewController{
    
    IBOutlet UITextView *text;
    
    
}

-(IBAction)AgregarContacto:(id)sender;

-(IBAction)ocultar:(id)sender;
@end
