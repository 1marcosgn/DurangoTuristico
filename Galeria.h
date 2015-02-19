//
//  Galeria.h
//  Durango Turistico
//
//  Created by Claudia Oliva on 09/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Galeria : UIViewController{
    
    IBOutlet UIImageView *imagen;
    IBOutlet UILabel *labelFoto;
    
    IBOutlet UIActivityIndicatorView *actividad;
    NSTimer *timer;
    
    IBOutlet UIButton *butAvante;
    IBOutlet UIButton *butRetracte;
    
}

-(IBAction)Avanzar:(id)sender;
-(IBAction)Atras:(id)sender;

@end
