//
//  Presas.m
//  Durango Turistico
//
//  Created by Claudia Oliva on 09/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "Presas.h"

@interface Presas ()

@end

@implementation Presas

bool resp1 = true;
bool resp2 = true;
bool resp3 = true;
bool resp4 = true;

//Variables Globales
bool respuestaEscena01 = false;
bool respuestaEscena02 = false;
bool respuestaEscena03 = false;
bool respuestaEscena04 = false;

int puntos = 0;

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
	
    //Cargar Dato
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *loadstring = [defaults objectForKey:@"savestring"];
    [labelPuntos setText:loadstring];
    [labelPuntos setText:loadstring];
    
    resp1 = true;
    resp2 = true;
    resp3 = true;
    resp4 = true;
    
    [self VerPuntaje];
}

-(void)Ceros{
    
    puntos = 0;
    
}

-(IBAction)GuardarPuntaje:(id)sender{
    
    NSString *savestring = labelPuntos.text;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:savestring forKey:@"savestring"];
    [defaults synchronize];
    
    [self Ceros];
    
}

-(void)VerPuntaje{
    
    
    puntos = puntos;
    
    if (puntos <= 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
        
        
        
    }else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
        
        
    }
    
    if ([etiquetaPrueba.text isEqualToString:@"--"]) {
        
        etiquetaPrueba.alpha = 0.0;
        
        NSString *message = @"";
        
        if (puntos <= 1) {
            
            message = @"Parece que no visitas Durango con frecuencia, da una vuelta por nuestro bello estado y aprende un poco mas de él";
            
        }
        if(puntos > 2 && puntos <= 3){
            
            message = @"Eres bueno conociendo e identificando algunas regiones, pero aun te faltan sitios por conocer";
            
        }
        if (puntos > 3) {
            
            message = @"Felicidades!! has acertado cada una de las respuestas, eres un gran viajero y conocedor";
            
        }
        
        
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Durango" message:message delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        
        [alert show];
        
    }
    
    if ([pruebaLabel02.text isEqualToString:@"::"]) {
        
        etiquetaPrueba.alpha = 0.0;
        
        UIAlertView *alert1=[[UIAlertView alloc]initWithTitle:@"Durango" message:@"Bienvenido, Responde y aprende sobre las presas mas importantes de la Región" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        
        [alert1 show];
    }
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


#pragma mark - Accion

//Escena 01 - Respuestas
-(IBAction)E1OpcionA:(id)sender{
    
    puntos = 0;
    
    labelPuntos.alpha = 1.0;
    
    
    a01.enabled = TRUE;
    b01.enabled = FALSE;
    c01.enabled = FALSE;
    d01.enabled = FALSE;
    
    
    //imagenRespuesta.image = [UIImage imageNamed:@"bien.png"];
    
    
    if (puntos == 0) {
        
        
        if (resp1 == TRUE) {
            puntos = puntos + 1;
            resp1 = FALSE;
            imagenRespuesta.image =[UIImage imageNamed:@"bien.png"];
            labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
            labelPuntos.hidden = FALSE;
            
        }
        else {
            puntos = puntos;
            labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
            labelPuntos.hidden = FALSE;
        }
        
    }
    else {
        puntos = 1;
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
        
    }
    
    
    
}
-(IBAction)E1OpcionB:(id)sender{
    
    labelPuntos.alpha = 1.0;
    //pts.alpha = 1.0;
    a01.enabled = FALSE;
    b01.enabled = TRUE;
    c01.enabled = FALSE;
    d01.enabled = FALSE;
    
    if (puntos != 0) {
        puntos = 0;
    }
    else {
        
        if (resp1 == TRUE) {
            
            imagenRespuesta.image =[UIImage imageNamed:@"mal.png"];
            puntos = 0;
            labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
            labelPuntos.hidden = FALSE;
            resp1 = FALSE;
        }
        
    }
    
}
-(IBAction)E1OpcionC:(id)sender{
    
    labelPuntos.alpha = 1.0;
    //pts.alpha = 1.0;
    a01.enabled = FALSE;
    b01.enabled = FALSE;
    c01.enabled = TRUE;
    d01.enabled = FALSE;
    
    if (puntos != 0) {
        puntos = 0;
    }
    else {
        
        if (resp1 == TRUE) {
            
            imagenRespuesta.image =[UIImage imageNamed:@"mal.png"];
            puntos = 0;
            labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
            labelPuntos.hidden = FALSE;
            resp1 = FALSE;
        }
        
    }
    
}
-(IBAction)E1OpcionD:(id)sender{
    
    labelPuntos.alpha = 1.0;
    //pts.alpha = 1.0;
    a01.enabled = FALSE;
    b01.enabled = FALSE;
    c01.enabled = FALSE;
    d01.enabled = TRUE;
    
    if (puntos != 0) {
        puntos = 0;
    }
    else {
        
        if (resp1 == TRUE) {
            
            imagenRespuesta.image =[UIImage imageNamed:@"mal.png"];
            puntos = 0;
            labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
            labelPuntos.hidden = FALSE;
            resp1 = FALSE;
        }
        
    }
    
}




//Escena 02 - Respuestas
-(IBAction)E2OpcionA:(id)sender{
    
    
    
    a02.enabled = TRUE;
    b02.enabled = FALSE;
    c02.enabled = FALSE;
    d02.enabled = FALSE;
    
    
    
    if (resp2 == true) {
        //a
        respuestaEscena02 = TRUE;
        imagenRespuesta.image = [UIImage imageNamed:@"bien.png"];
        puntos = puntos + 1;
        resp2 = false;
        
        if (puntos <= 0) {
            labelPuntos.text = @"1";
            labelPuntos.hidden = FALSE;
        }else {
            labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
            labelPuntos.hidden = FALSE;
        }
        
    }
    else {
        puntos = puntos;
    }
    
    
}
-(IBAction)E2OpcionB:(id)sender{
    
    
    
    a02.enabled = FALSE;
    b02.enabled = TRUE;
    c02.enabled = FALSE;
    d02.enabled = FALSE;
    
   
    
    //b
    respuestaEscena02 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
    
    
    
}
-(IBAction)E2OpcionC:(id)sender{
    
    
    a02.enabled = FALSE;
    b02.enabled = FALSE;
    c02.enabled = TRUE;
    d02.enabled = FALSE;
    
    
    
    //b
    respuestaEscena02 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
    
}
-(IBAction)E2OpcionD:(id)sender{
    
    
    a02.enabled = FALSE;
    b02.enabled = FALSE;
    c02.enabled = FALSE;
    d02.enabled = TRUE;
    
    
    
    //b
    respuestaEscena02 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
    
    
}



//Escena 03 - Respuestas
-(IBAction)E3OpcionA:(id)sender{
    
    a03.enabled = TRUE;
    b03.enabled = FALSE;
    c03.enabled = FALSE;
    d03.enabled = FALSE;
    
    
    
    //a
    respuestaEscena03 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
    
}
-(IBAction)E3OpcionB:(id)sender{
    
    a03.enabled = FALSE;
    b03.enabled = TRUE;
    c03.enabled = FALSE;
    d03.enabled = FALSE;
    
    
    
    if (resp3 == true) {
        
        //b
        respuestaEscena03 = TRUE;
        imagenRespuesta.image = [UIImage imageNamed:@"bien.png"];
        puntos = puntos + 1;
        resp3 = false;
        if (puntos <= 0) {
            labelPuntos.text = @"1";
            labelPuntos.hidden = FALSE;
        }else {
            labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
            labelPuntos.hidden = FALSE;
        }
        
    }
    else {
        puntos = puntos;
    }
    
    
    
}
-(IBAction)E3OpcionC:(id)sender{
    
    a03.enabled = FALSE;
    b03.enabled = FALSE;
    c03.enabled = TRUE;
    d03.enabled = FALSE;
    
    
    
    //c
    respuestaEscena03 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
    
    
    
}
-(IBAction)E3OpcionD:(id)sender{
    
    a03.enabled = FALSE;
    b03.enabled = FALSE;
    c03.enabled = FALSE;
    d03.enabled = TRUE;
    
    
    
    //d
    respuestaEscena03 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
    
}


//Escena 04 - Respuestas
-(IBAction)E4OpcionA:(id)sender{
    
    a04.enabled = TRUE;
    b04.enabled = FALSE;
    c04.enabled = FALSE;
    d04.enabled = FALSE;
    
    
    
    //a
    respuestaEscena04 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
}
-(IBAction)E4OpcionB:(id)sender{
    
    a04.enabled = FALSE;
    b04.enabled = TRUE;
    c04.enabled = FALSE;
    d04.enabled = FALSE;
    
    
    
    //a
    respuestaEscena04 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
}
-(IBAction)E4OpcionC:(id)sender{
    
    a04.enabled = FALSE;
    b04.enabled = FALSE;
    c04.enabled = TRUE;
    d04.enabled = FALSE;
    
    
    
    //a
    respuestaEscena04 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
}
-(IBAction)E4OpcionD:(id)sender{
    
    a04.enabled = FALSE;
    b04.enabled = FALSE;
    c04.enabled = FALSE;
    d04.enabled = TRUE;
    
    //c
    if (resp4 == true) {
        
        respuestaEscena04 = TRUE;
        imagenRespuesta.image = [UIImage imageNamed:@"bien.png"];
        puntos = puntos + 1;
        resp4 = false;
        
        if (puntos <= 0) {
            labelPuntos.text = @"1";
            labelPuntos.hidden = FALSE;
        }else {
            labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
            labelPuntos.hidden = FALSE;
        }
        
    }
    else {
        puntos = puntos;
    }}


@end
