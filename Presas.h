//
//  Presas.h
//  Durango Turistico
//
//  Created by Claudia Oliva on 09/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Presas : UIViewController{
    
    IBOutlet UILabel *labelPuntos;
    
    IBOutlet UILabel *pruebaLabel02;
    
    IBOutlet UILabel *etiquetaPrueba;
    
    IBOutlet UIImageView *imagenRespuesta;
    
    
    IBOutlet UIButton *a01;
    IBOutlet UIButton *a02;
    IBOutlet UIButton *a03;
    IBOutlet UIButton *a04;
    
    IBOutlet UIButton *b01;
    IBOutlet UIButton *b02;
    IBOutlet UIButton *b03;
    IBOutlet UIButton *b04;
    
    IBOutlet UIButton *c01;
    IBOutlet UIButton *c02;
    IBOutlet UIButton *c03;
    IBOutlet UIButton *c04;

    IBOutlet UIButton *d01;
    IBOutlet UIButton *d02;
    IBOutlet UIButton *d03;
    IBOutlet UIButton *d04;
    
    
}

//Escena 01 - Respuestas
-(IBAction)E1OpcionA:(id)sender;
-(IBAction)E1OpcionB:(id)sender;
-(IBAction)E1OpcionC:(id)sender;
-(IBAction)E1OpcionD:(id)sender;

//Escena 02 - Respuestas
-(IBAction)E2OpcionA:(id)sender;
-(IBAction)E2OpcionB:(id)sender;
-(IBAction)E2OpcionC:(id)sender;
-(IBAction)E2OpcionD:(id)sender;

//Escena 03 - Respuestas
-(IBAction)E3OpcionA:(id)sender;
-(IBAction)E3OpcionB:(id)sender;
-(IBAction)E3OpcionC:(id)sender;
-(IBAction)E3OpcionD:(id)sender;

//Escena 04 - Respuestas
-(IBAction)E4OpcionA:(id)sender;
-(IBAction)E4OpcionB:(id)sender;
-(IBAction)E4OpcionC:(id)sender;
-(IBAction)E4OpcionD:(id)sender;


@end
