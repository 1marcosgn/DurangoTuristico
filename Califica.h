//
//  Califica.h
//  Durango Turistico
//
//  Created by Claudia Oliva on 12/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Twitter/Twitter.h>
#import <Accounts/Accounts.h>

@interface Califica : UIViewController  /*<UIPickerViewDelegate, UIPickerViewDataSource>*/{
    
    IBOutlet UIButton *butestrellaUno;
    IBOutlet UIButton *butestrellaDos;
    IBOutlet UIButton *butestrellaTres;
    IBOutlet UIButton *butestrellaCuatro;
    IBOutlet UIButton *butestrellaCinco;
    
    IBOutlet UIImageView *imagenView;
    
    IBOutlet UIScrollView *scrollOpinion;
    
    //UIImageView *ImageView;
    //UIPickerView *picker01;
    //NSArray *pickerData01;
    
    //IBOutlet UIView *vista;
    
    IBOutlet UITextView *text;
    IBOutlet UITextField *textfield;
    
}


-(IBAction)UnaEstrella:(id)sender;

-(IBAction)DosEstrella:(id)sender;

-(IBAction)TresEstrella:(id)sender;

-(IBAction)CuatroEstrella:(id)sender;

-(IBAction)CincoEstrella:(id)sender;



- (IBAction)showTweetSheet;

/*
@property (nonatomic, retain) IBOutlet UIImageView *ImageView;

@property (nonatomic, retain) IBOutlet UIPickerView *picker01;

@property (nonatomic, retain) NSArray *pickerData01;

-(IBAction)MostrarAnimado:(id)sender;
*/


-(IBAction)OcultarTeclado:(id)sender;
-(IBAction)OcultarText;


@end
