//
//  Galeria.m
//  Durango Turistico
//
//  Created by Claudia Oliva on 09/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "Galeria.h"

@interface Galeria ()

@end

@implementation Galeria

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
	
//    timer = [NSTimer scheduledTimerWithTimeInterval:(1.0/2.0) target:self selector:@selector(loading) userInfo:nil repeats:YES];
    
}

/*
-(void)loading{
    
    if(butAvante.selected){
        [actividad startAnimating];
        actividad.alpha = 1.0;
    }
    else {
        [actividad stopAnimating];
        actividad.alpha = 0.0;
    }
    
}*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

int cuenta = 0;

-(IBAction)Avanzar:(id)sender{
    
    
    
    if(cuenta >= 10){
        cuenta = 1;
    }
    else {
         cuenta = cuenta +1;
    }
    
    [self Imagenes:cuenta];
    
}
-(IBAction)Atras:(id)sender{
    
    if (cuenta <= 1) {
        cuenta = 2;
    }
    else {
        cuenta = cuenta -1;
    }
        
    [self Imagenes:cuenta];
    
}

-(void)Imagenes:(int)conteo{
    
    
    
    NSString *imagestring = @"";
    NSString *nombreFoto = @"";
    
    
    switch (cuenta) {
        case 1:
            imagestring = @"http://fipade.com/fipade/images/stories/01.jpg";
            nombreFoto = @"Museo Regional del Aguacate";
            break;
        case 2:
            imagestring = @"http://fipade.com/fipade/images/stories/02.jpg";
            nombreFoto = @"Arzobispado";
            break;
        case 3:
            imagestring = @"http://fipade.com/fipade/images/stories/03.jpg";
            nombreFoto = @"Catedral Basílica Menor";
            break;
        case 4:
            imagestring = @"http://fipade.com/fipade/images/stories/04.jpg";
            nombreFoto = @"Palacio de Escárzaga";
            break;
        case 5:
            imagestring = @"http://fipade.com/fipade/images/stories/05.jpg";
            nombreFoto = @"Plazuela Baca Ortiz";
            break;
        case 6:
            imagestring = @"http://fipade.com/fipade/images/stories/06.jpg";
            nombreFoto = @"Teatro Ricardo Castro";
            break;
        case 7:
            imagestring = @"http://fipade.com/fipade/images/stories/07.jpg";
            nombreFoto = @"Iglesia de Santa Ana";
            break;
        case 8:
            imagestring = @"http://fipade.com/fipade/images/stories/08.jpg";
            nombreFoto = @"Estación de Ferrocarril";
            break;
        case 9:
            imagestring = @"http://fipade.com/fipade/images/stories/09.jpg";
            nombreFoto = @"Palacio de Zambrano ";
            break;
        case 10:
            imagestring = @"http://fipade.com/fipade/images/stories/10.png";
            nombreFoto = @"Centro Cultural de Durango";
            break;

  default:
    break;
}
   
    
    
    
    
    
    
    NSURL *urlone= [NSURL URLWithString:imagestring];
    
    NSData *new=[NSData dataWithContentsOfURL:urlone];
    
    labelFoto.text = nombreFoto;
    
    [imagen setImage:[UIImage imageWithData:new]];
    
    
        

    
}

@end
