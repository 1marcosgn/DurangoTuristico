//
//  Opinion.h
//  Durango Turistico
//
//  Created by Claudia Oliva on 09/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUi.h>

@interface Opinion : UIViewController <MFMailComposeViewControllerDelegate>{
    
    IBOutlet UITextField *nombre;
    IBOutlet UITextField *edad;
    IBOutlet UITextField *bueno;
    IBOutlet UITextField *malo;
    
    IBOutlet UIScrollView *scrollOpinion;
    
    IBOutlet UITextView *textView;
    
    IBOutlet UILabel *labelPrueba;
}

-(IBAction)Mailsend:(id)sender;

-(IBAction)Ocultar:(id)sender;

-(IBAction)Clear:(id)sender;

-(IBAction)Teclado:(id)sender;


@end
