//
//  Mapas.m
//  Durango Turistico
//
//  Created by Claudia Oliva on 09/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "Mapas.h"
#import "mapAnnotation.h"

@interface Mapas ()

@end

@implementation Mapas


@synthesize pickerData;
@synthesize ImageView;
@synthesize picker;

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
	
    
    pickerData = [[NSArray alloc] initWithObjects:@"Holiday Inn",@"Victoria Express",@"Hotel Santa Cruz",@"Campo Mexico Courts",@"Best Western",@"Fiesta Inn",@"Monumental Express",@"Gobernador",@"Posada San Jorge",@"Rincon Real Suites",@"Hostal la monja",@"Casa Blanca",@"Florida Plaza", nil];
    
    
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

#pragma mark - Metodos Mapas


-(IBAction)ubicacionActual:(id)sender{
    
    mapaDurango.showsUserLocation = YES;
    
}


-(IBAction)Prueba:(id)sender{
    
    
    [self PonerAnotacion];
    
}

#pragma mark - PickerView Data Sources Methods

// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 1;
    
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    return [pickerData count];
    
}



#pragma mark - PickerView Delegate Methods

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return [pickerData objectAtIndex:row];
    
}

int lugar = 0;

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    if ([[pickerData objectAtIndex:row] isEqualToString:@"Holiday Inn"]) {
        
        lugar = 1;
        
        [self LugarAnotacion:lugar];
        
        //[self.ImageView setImage:[UIImage imageNamed:@"green.png"]];
        
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Victoria Express"]) {
        
        lugar = 2;
        
        [self LugarAnotacion:lugar];
        
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Hotel Santa Cruz"]) {
        
        lugar = 3;
        [self LugarAnotacion:lugar];
        
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Campo Mexico Courts"]) {
        
        lugar = 4;
        [self LugarAnotacion:lugar];
        
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Best Western"]) {
        
        lugar = 5;
        [self LugarAnotacion:lugar];
        
    }
    if ([[pickerData objectAtIndex:row] isEqualToString:@"Fiesta Inn"]) {
        
        lugar = 6;
        [self LugarAnotacion:lugar];
        
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Monumental Express"]) {
        
        lugar = 7;
        [self LugarAnotacion:lugar];
        
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Gobernador"]) {
        
        lugar = 8;
        [self LugarAnotacion:lugar];
        
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Posada San Jorge"]) {
        
        lugar = 9;
        [self LugarAnotacion:lugar];
        
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Rincon Real Suites"]) {
        
        lugar = 10;
        [self LugarAnotacion:lugar];
        
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Hostal la monja"]) {
        
        lugar = 11;
        [self LugarAnotacion:lugar];
        
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Casa Blanca"]) {
        
        lugar = 12;
        [self LugarAnotacion:lugar];
        
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Florida Plaza"]) {
        
        lugar = 13;
        [self LugarAnotacion:lugar];
        
    }

}


-(void)LugarAnotacion:(int)place{
    
    switch (place) {
        case 1:
            [self PonerAnotacion];
            break;
        case 2:
            [self PonerAnotacion2];
            break;
        case 3:
            [self PonerAnotacion3];
            break;
        case 4:
            [self PonerAnotacion4];
            break;
        case 5:
            [self PonerAnotacion5];
            break;
        case 6:
            [self PonerAnotacion6];
            break;
        case 7:
            [self PonerAnotacion7];
            break;
        case 8:
            [self PonerAnotacion8];
            break;
        case 9:
            [self PonerAnotacion9];
            break;
        case 10:
            [self PonerAnotacion10];
            break;
        case 11:
            [self PonerAnotacion11];
            break;
        case 12:
            [self PonerAnotacion12];
            break;
        case 13:
            [self PonerAnotacion13];
            break;
            
            
    default:
    break;
}
    
}

-(IBAction)MostrarAnimado:(id)sender{
    
    float valorVista = vista.alpha;
    
    if (valorVista == 1.0) {
        [UIView animateWithDuration:0.3 animations:^(){
            
            vista.alpha = 0.0;
            
                        
        }];
    }
    else {
        [UIView animateWithDuration:0.3 animations:^(){
            
            vista.alpha = 1.0;
            
                       
        }];
    }
    
    
}

-(void)PonerAnotacion{
    
    //Holiday Inn
    MKCoordinateRegion regionHolidayInn;
    regionHolidayInn.center.latitude=24.056105;
    regionHolidayInn.center.longitude= -104.614778;
    regionHolidayInn.span.longitudeDelta=0.01;
    regionHolidayInn.span.latitudeDelta=0.01;
    [mapaDurango setRegion:regionHolidayInn animated:YES];
    
    mapAnnotation *annHolidayInn=[[mapAnnotation alloc]init];
    annHolidayInn.title=@"Holiday Inn";
    annHolidayInn.subtitle=@"";
    annHolidayInn.coordinate=regionHolidayInn.center;
    [mapaDurango addAnnotation:annHolidayInn];  

    
    
    
}

-(void)PonerAnotacion2{
    
    //Victoria Express
    MKCoordinateRegion regionVictoria;
    regionVictoria.center.latitude=24.047796;
    regionVictoria.center.longitude= -104.624991;
    regionVictoria.span.longitudeDelta=0.01;
    regionVictoria.span.latitudeDelta=0.01;
    [mapaDurango setRegion:regionVictoria animated:YES];
    
    mapAnnotation *annVictoria=[[mapAnnotation alloc]init];
    annVictoria.title=@"Victoria Express";
    annVictoria.subtitle=@"";
    annVictoria.coordinate=regionVictoria.center;
    [mapaDurango addAnnotation:annVictoria];  
    
}
-(void)PonerAnotacion3{
    
    //Hotel Santa Cruz Durango
    MKCoordinateRegion regionSantaCruz;
    regionSantaCruz.center.latitude=24.034079;
    regionSantaCruz.center.longitude= -104.638724;
    regionSantaCruz.span.longitudeDelta=0.01;
    regionSantaCruz.span.latitudeDelta=0.01;
    [mapaDurango setRegion:regionSantaCruz animated:YES];
    
    mapAnnotation *annSantaCruz=[[mapAnnotation alloc]init];
    annSantaCruz.title=@"Hotel Santa Cruz";
    annSantaCruz.subtitle=@"";
    annSantaCruz.coordinate=regionSantaCruz.center;
    [mapaDurango addAnnotation:annSantaCruz];
    
}
-(void)PonerAnotacion4{
    
    //Campo Mexico Courts
    MKCoordinateRegion regionCampoMexico;
    regionCampoMexico.center.latitude=24.029013;
    regionCampoMexico.center.longitude= -104.643949;
    regionCampoMexico.span.longitudeDelta=0.01;
    regionCampoMexico.span.latitudeDelta=0.01;
    [mapaDurango setRegion:regionCampoMexico animated:YES];
    
    mapAnnotation *annCampoMexico=[[mapAnnotation alloc]init];
    annCampoMexico.title=@"Campo México Courts";
    annCampoMexico.subtitle=@"";
    annCampoMexico.coordinate=regionCampoMexico.center;
    [mapaDurango addAnnotation:annCampoMexico];     
}
-(void)PonerAnotacion5{
    
    //Best Western Plaza Viscaya
    MKCoordinateRegion regionBestWest;
    regionBestWest.center.latitude=24.029846;
    regionBestWest.center.longitude= -104.645612;
    regionBestWest.span.longitudeDelta=0.01;
    regionBestWest.span.latitudeDelta=0.01;
    [mapaDurango setRegion:regionBestWest animated:YES];
    
    mapAnnotation *annBestWest=[[mapAnnotation alloc]init];
    annBestWest.title=@"Best Western Plaza Viscaya";
    annBestWest.subtitle=@"";
    annBestWest.coordinate=regionBestWest.center;
    [mapaDurango addAnnotation:annBestWest];  
    
}
-(void)PonerAnotacion6{
    
    //Hotel Fiesta Inn
    MKCoordinateRegion regionFiestaInn;
    regionFiestaInn.center.latitude=24.034824;
    regionFiestaInn.center.longitude= -104.650719;
    regionFiestaInn.span.longitudeDelta=0.01;
    regionFiestaInn.span.latitudeDelta=0.01;
    [mapaDurango setRegion:regionFiestaInn animated:YES];
    
    mapAnnotation *annFiestaInn=[[mapAnnotation alloc]init];
    annFiestaInn.title=@"Hotel Fiesta Inn";
    annFiestaInn.subtitle=@"";
    annFiestaInn.coordinate=regionFiestaInn.center;
    [mapaDurango addAnnotation:annFiestaInn];  
    
}
-(void)PonerAnotacion7{
    
    //Monumental Express
    MKCoordinateRegion regionMonumental;
    regionMonumental.center.latitude=24.03549;
    regionMonumental.center.longitude= -104.656878;
    regionMonumental.span.longitudeDelta=0.01;
    regionMonumental.span.latitudeDelta=0.01;
    [mapaDurango setRegion:regionMonumental animated:YES];
    
    mapAnnotation *annMonumental=[[mapAnnotation alloc]init];
    annMonumental.title=@"Monumental Express";
    annMonumental.subtitle=@"";
    annMonumental.coordinate=regionMonumental.center;
    [mapaDurango addAnnotation:annMonumental]; 
    
}
-(void)PonerAnotacion8{
    
    //Gobernador
    MKCoordinateRegion regionGobernador;
    regionGobernador.center.latitude=24.024775;
    regionGobernador.center.longitude= -104.661866;
    regionGobernador.span.longitudeDelta=0.01;
    regionGobernador.span.latitudeDelta=0.01;
    [mapaDurango setRegion:regionGobernador animated:YES];
    
    mapAnnotation *annGobernador=[[mapAnnotation alloc]init];
    annGobernador.title=@"Hotel Gobernador";
    annGobernador.subtitle=@"";
    annGobernador.coordinate=regionGobernador.center;
    [mapaDurango addAnnotation:annGobernador];        
    
}
-(void)PonerAnotacion9{
    
    //Hotel Posada San Jorge
    MKCoordinateRegion regionPosadaSanJorge;
    regionPosadaSanJorge.center.latitude=24.025191;
    regionPosadaSanJorge.center.longitude= -104.665214;
    regionPosadaSanJorge.span.longitudeDelta=0.01;
    regionPosadaSanJorge.span.latitudeDelta=0.01;
    [mapaDurango setRegion:regionPosadaSanJorge animated:YES];
    
    mapAnnotation *annPosadaSanJorge=[[mapAnnotation alloc]init];
    annPosadaSanJorge.title=@"Hotel Posada San Jorge";
    annPosadaSanJorge.subtitle=@"";
    annPosadaSanJorge.coordinate=regionPosadaSanJorge.center;
    [mapaDurango addAnnotation:annPosadaSanJorge]; 
    
}
-(void)PonerAnotacion10{
    
    //Rincon Real Suites
    MKCoordinateRegion regionRealSuites;
    regionRealSuites.center.latitude=24.025338;
    regionRealSuites.center.longitude= -104.664892;
    regionRealSuites.span.longitudeDelta=0.01;
    regionRealSuites.span.latitudeDelta=0.01;
    [mapaDurango setRegion:regionRealSuites animated:YES];
    
    mapAnnotation *annRealSuites=[[mapAnnotation alloc]init];
    annRealSuites.title=@"Hotel Rincon Real Suites";
    annRealSuites.subtitle=@"";
    annRealSuites.coordinate=regionRealSuites.center;
    [mapaDurango addAnnotation:annRealSuites]; 
    
}
-(void)PonerAnotacion11{
    
    //Hostal la monja
    MKCoordinateRegion regionMonja;
    regionMonja.center.latitude=24.028543;
    regionMonja.center.longitude= -104.670825;
    regionMonja.span.longitudeDelta=0.01;
    regionMonja.span.latitudeDelta=0.01;
    [mapaDurango setRegion:regionMonja animated:YES];
    
    mapAnnotation *annMonja=[[mapAnnotation alloc]init];
    annMonja.title=@"Hostal de la Monja";
    annMonja.subtitle=@"";
    annMonja.coordinate=regionMonja.center;
    [mapaDurango addAnnotation:annMonja];       
}
-(void)PonerAnotacion12{
    
    //Casa Blanca
    MKCoordinateRegion regionCasaBlanca;
    regionCasaBlanca.center.latitude=24.0242268;
    regionCasaBlanca.center.longitude= -104.6718019;
    regionCasaBlanca.span.longitudeDelta=0.01;
    regionCasaBlanca.span.latitudeDelta=0.01;
    [mapaDurango setRegion:regionCasaBlanca animated:YES];
    
    mapAnnotation *annCasaBlanca=[[mapAnnotation alloc]init];
    annCasaBlanca.title=@"Casa Blanca";
    annCasaBlanca.subtitle=@"";
    annCasaBlanca.coordinate=regionCasaBlanca.center;
    [mapaDurango addAnnotation:annCasaBlanca]; 
    
}
-(void)PonerAnotacion13{
    
    //Florida Plaza
    MKCoordinateRegion regionFlorida;
    regionFlorida.center.latitude=24.024006;
    regionFlorida.center.longitude= -104.674537;
    regionFlorida.span.longitudeDelta=0.01;
    regionFlorida.span.latitudeDelta=0.01;
    [mapaDurango setRegion:regionFlorida animated:YES];
    
    mapAnnotation *annFlorida=[[mapAnnotation alloc]init];
    annFlorida.title=@"Florida Plaza";
    annFlorida.subtitle=@"";
    annFlorida.coordinate=regionFlorida.center;
    [mapaDurango addAnnotation:annFlorida];
    
}



@end
