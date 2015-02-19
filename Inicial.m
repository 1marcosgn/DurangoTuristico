//
//  Inicial.m
//  Durango Turistico
//
//  Created by Claudia Oliva on 09/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "Inicial.h"

@interface Inicial ()

@end

@implementation Inicial

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction)MostrarAnimado:(id)sender{
    
    
    float valorVista = vista.alpha;
    
    if (valorVista == 1.0) {
        [UIView animateWithDuration:0.3 animations:^(){
            
            vista.alpha = 0.0;
            
            boton.alpha = 1.0;
            
            labelTitulo.alpha = 1.0;
            textIntro.alpha = 1.0;
            imagen01.alpha = 1.0;
            imagen02.alpha = 1.0;
            imagen03.alpha = 1.0;
            imagen04.alpha = 1.0;
            labelTextOtro.alpha = 1.0;
            
        }];
    }
    else {
        [UIView animateWithDuration:0.3 animations:^(){
            
            vista.alpha = 1.0;
            
            boton.alpha = 0.0;
            
            labelTitulo.alpha = 0.0;
            textIntro.alpha = 0.0;
            
            
            imagen01.alpha = 0.0;
            imagen02.alpha = 0.0;
            imagen03.alpha = 0.0;
            imagen04.alpha = 0.0;
            labelTextOtro.alpha = 0.0;
            
        }];
    }
    
    
}


-(IBAction)enlaceMunicipio:(id)sender{
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://www.municipiodurango.gob.mx/"]];
    
}//
-(IBAction)enlaceDurango01:(id)sender{
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://visita.durango.gob.mx/"]];
    
}//
-(IBAction)enlaceMexico:(id)sender{
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://www.visitmexico.com/wb2/"]];
    
}//
-(IBAction)enlaceDurango:(id)sender{
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://visita.durango.gob.mx/"]];
    
}//



@end
