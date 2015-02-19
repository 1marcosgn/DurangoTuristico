//
//  Inicial.h
//  Durango Turistico
//
//  Created by Claudia Oliva on 09/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Inicial : UIViewController{
    
    IBOutlet UIView *vista;
    IBOutlet UIButton *boton;
    IBOutlet UILabel *labelTitulo;
    IBOutlet UITextView *textIntro;
    
    IBOutlet UIButton *imagen01;
    IBOutlet UIButton *imagen02;
    IBOutlet UIButton *imagen03;
    IBOutlet UIButton *imagen04;
    
    IBOutlet UILabel *labelTextOtro;

}


-(IBAction)MostrarAnimado:(id)sender;

-(IBAction)enlaceMunicipio:(id)sender;//http://www.municipiodurango.gob.mx/
-(IBAction)enlaceDurango01:(id)sender;//http://visita.durango.gob.mx/
-(IBAction)enlaceMexico:(id)sender;//http://www.visitmexico.com/wb2/
-(IBAction)enlaceDurango:(id)sender;//http://visita.durango.gob.mx/

@end
