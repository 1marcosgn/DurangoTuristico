//
//  Fotos.h
//  Durango Turistico
//
//  Created by Claudia Oliva on 09/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Twitter/Twitter.h>
#import <Accounts/Accounts.h>

@interface Fotos : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>{
    
    IBOutlet UIImageView *imagenView;
    IBOutlet UITextField *campoTexto;
}

//-(IBAction)abrirGaleria:(id)sender;
-(IBAction)tomarFoto:(id)sender;

- (IBAction)showTweetSheet;

-(IBAction)ocultaTeclado:(id)sender;


@end
