//
//  Califica.m
//  Durango Turistico
//
//  Created by Claudia Oliva on 12/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "Califica.h"

@interface Califica ()

@end

@implementation Califica


//@synthesize pickerData01;
//@synthesize ImageView;
//@synthesize picker01;


bool band = true;
bool band2 = true;
bool band3 = true;
bool band4 = true;
bool band5 = true;

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
    
    //Scroll_Principal
    [scrollOpinion setScrollEnabled:YES];
    [scrollOpinion setContentSize:CGSizeMake(50, 450)];
	
//    pickerData01 = [[NSArray alloc] initWithObjects:@"Holiday Inn",@"Victoria Express",@"Hotel Santa Cruz",@"Campo Mexico Courts",@"Best Western",@"Fiesta Inn",@"Monumental Express",@"Gobernador",@"Posada San Jorge",@"Rincon Real Suites",@"Hostal la monja",@"Casa Blanca",@"Florida Plaza", nil];

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


- (IBAction)showTweetSheet{
    
    //  Create an instance of the Tweet Sheet
    TWTweetComposeViewController *tweetSheet = [[TWTweetComposeViewController alloc] init];
    
    // Sets the completion handler.  Note that we don't know which thread the
    // block will be called on, so we need to ensure that any UI updates occur
    // on the main queue
    tweetSheet.completionHandler = ^(TWTweetComposeViewControllerResult result) {
        switch(result) {
            case TWTweetComposeViewControllerResultCancelled:
                //  This means the user cancelled without sending the Tweet
                break;
            case TWTweetComposeViewControllerResultDone:
                //  This means the user hit 'Send'
                break;
        }
        
        
        //  dismiss the Tweet Sheet 
        dispatch_async(dispatch_get_main_queue(), ^{            
            [self dismissViewControllerAnimated:YES completion:^{
                NSLog(@"Tweet Sheet has been dismissed."); 
            }];
        });
    };
    
    NSString *valor = [NSString stringWithFormat:@"%d", estrellas];
    
    NSString *hotel = textfield.text;
    
    NSString *comentario = text.text;
    
    
    NSString *msj = valor;//campoTexto.text;
    
    NSString *mensaje = [NSString stringWithFormat:@"#VisitaDurango Asi te califico %@  %@ Estrellas, %@",hotel, msj,comentario];
    
    //  Set the initial body of the Tweet2
    [tweetSheet setInitialText:mensaje]; 
    
    //  Adds an image to the Tweet
    //  For demo purposes, assume we have an image named 'larry.png'
    //  that we wish to attach
    
    if (![tweetSheet addImage:imagenView.image]) 
    {
        //if (![tweetSheet addImage:[UIImage imageNamed:@"cab.png"]]) {
        NSLog(@"Unable to add the image!");
    }
    
    //  Add an URL to the Tweet.  You can add multiple URLs.
    /* if (![tweetSheet addURL:[NSURL URLWithString:@"http://twitter.com/"]]){
     NSLog(@"Unable to add the URL!");
     }*/
    
    //  Presents the Tweet Sheet to the user
    [self presentViewController:tweetSheet animated:YES completion:^{
        NSLog(@"Tweet sheet has been presented.");
    }];
    
    
}

int estrellas = 0;

-(IBAction)UnaEstrella:(id)sender{
    
    UIImage *buttonImage;
    
    if (band == true) {
        
        band = false;
        
        buttonImage = [UIImage imageNamed:@"star.png"];
                
        estrellas = 1;
        
        [butestrellaUno setBackgroundImage:buttonImage forState:UIControlStateNormal];
         
    }
    else {
        
        band = true;
        
        buttonImage = [UIImage imageNamed:@"starno.png"];
        
        estrellas = 0;
        
        [butestrellaUno setBackgroundImage:buttonImage forState:UIControlStateNormal];
        [butestrellaDos setBackgroundImage:buttonImage forState:UIControlStateNormal];
        [butestrellaTres setBackgroundImage:buttonImage forState:UIControlStateNormal];
        [butestrellaCuatro setBackgroundImage:buttonImage forState:UIControlStateNormal];
        [butestrellaCinco setBackgroundImage:buttonImage forState:UIControlStateNormal];
        
    }
    
    
    

    
    /*
    UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
    [butestrellaUno setBackgroundImage:buttonImage forState:UIControlStateNormal];
    
    estrellas = 1;
*/
   
    
        
}

-(IBAction)DosEstrella:(id)sender{
    
    UIImage *buttonImage;
    
    if (band2 == true) {
        
        band2 = false;
        
        buttonImage = [UIImage imageNamed:@"star.png"];
        
        [butestrellaUno setBackgroundImage:buttonImage forState:UIControlStateNormal];
        
        [butestrellaDos setBackgroundImage:buttonImage forState:UIControlStateNormal];
        
        
        estrellas = 2;
        
    }
    else {
        
    
        band2 = true;
        
        buttonImage = [UIImage imageNamed:@"starno.png"];
        
        //[butestrellaUno setBackgroundImage:buttonImage forState:UIControlStateNormal];
        
        [butestrellaDos setBackgroundImage:buttonImage forState:UIControlStateNormal];
        
        [butestrellaTres setBackgroundImage:buttonImage forState:UIControlStateNormal];
        
        [butestrellaCuatro setBackgroundImage:buttonImage forState:UIControlStateNormal];
        
        [butestrellaCinco setBackgroundImage:buttonImage forState:UIControlStateNormal];
        

        
        estrellas = 1;
    
    
    }

    
   
    
    
    
    
}

-(IBAction)TresEstrella:(id)sender{
    
    UIImage *buttonImage;
    
    if(band3 == true){
        
        band3 = false;
        
        buttonImage = [UIImage imageNamed:@"star.png"];
        
        [butestrellaUno setBackgroundImage:buttonImage forState:UIControlStateNormal];
        
        [butestrellaDos setBackgroundImage:buttonImage forState:UIControlStateNormal];
        
        [butestrellaTres setBackgroundImage:buttonImage forState:UIControlStateNormal];
        
        estrellas = 3;
        
    }
    else {
        
        band3 = true;
        
        buttonImage = [UIImage imageNamed:@"starno.png"];
        
        [butestrellaTres setBackgroundImage:buttonImage forState:UIControlStateNormal];
        
        [butestrellaCuatro setBackgroundImage:buttonImage forState:UIControlStateNormal];
        
        [butestrellaCinco setBackgroundImage:buttonImage forState:UIControlStateNormal];
        
        estrellas = 2;
        
    }
    
    
    
    
}

-(IBAction)CuatroEstrella:(id)sender{
    
    UIImage *buttonImage;
    
    if (band4 == true) {
        
        band4 = false;
        
        estrellas = 4;
        
        buttonImage = [UIImage imageNamed:@"star.png"];
        
        [butestrellaUno setBackgroundImage:buttonImage forState:UIControlStateNormal];
        
        [butestrellaDos setBackgroundImage:buttonImage forState:UIControlStateNormal];
        
        [butestrellaTres setBackgroundImage:buttonImage forState:UIControlStateNormal];
        
        [butestrellaCuatro setBackgroundImage:buttonImage forState:UIControlStateNormal];
        
    }
    else {
        
        band4 = true;
        
        estrellas = 3;
        
        buttonImage = [UIImage imageNamed:@"starno.png"];
        
//        [butestrellaUno setBackgroundImage:buttonImage forState:UIControlStateNormal];
//        
//        [butestrellaDos setBackgroundImage:buttonImage forState:UIControlStateNormal];
        
        [butestrellaCuatro setBackgroundImage:buttonImage forState:UIControlStateNormal];
        
        [butestrellaCinco setBackgroundImage:buttonImage forState:UIControlStateNormal];
        
    }
    
    
    
    
    
}

-(IBAction)CincoEstrella:(id)sender{
    
    UIImage *buttonImage;
    
    if (band5 == true) {
        
        band5 = false;
        
        buttonImage = [UIImage imageNamed:@"star.png"];
        
        [butestrellaUno setBackgroundImage:buttonImage forState:UIControlStateNormal];
        
        [butestrellaDos setBackgroundImage:buttonImage forState:UIControlStateNormal];
        
        [butestrellaTres setBackgroundImage:buttonImage forState:UIControlStateNormal];
        
        [butestrellaCuatro setBackgroundImage:buttonImage forState:UIControlStateNormal];
        
        [butestrellaCinco setBackgroundImage:buttonImage forState:UIControlStateNormal];
        
        estrellas = 5;
        
    }
    else {
        
        band5 = true;
        
        buttonImage = [UIImage imageNamed:@"starno.png"];
        
//        [butestrellaUno setBackgroundImage:buttonImage forState:UIControlStateNormal];
//        
//        [butestrellaDos setBackgroundImage:buttonImage forState:UIControlStateNormal];
//        
//        [butestrellaTres setBackgroundImage:buttonImage forState:UIControlStateNormal];
//        
//        [butestrellaCuatro setBackgroundImage:buttonImage forState:UIControlStateNormal];
        
        [butestrellaCinco setBackgroundImage:buttonImage forState:UIControlStateNormal];
        
        estrellas = 4;
        
    }
    
    
    
}

/*
#pragma mark - PickerView Data Sources Methods

// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 1;
    
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    return [pickerData01 count];
    
}



#pragma mark - PickerView Delegate Methods

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return [pickerData01 objectAtIndex:row];
    
}

int lugar = 0;

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    if ([[pickerData01 objectAtIndex:row] isEqualToString:@"Holiday Inn"]) {
        
        lugar = 1;
        
        
        
        [self.ImageView setImage:[UIImage imageNamed:@"green.png"]];
        
    }
    else if ([[pickerData01 objectAtIndex:row] isEqualToString:@"Victoria Express"]) {
        
        lugar = 2;
        
        [self.ImageView setImage:[UIImage imageNamed:@"starno.png"]];
        
    }
    else if ([[pickerData01 objectAtIndex:row] isEqualToString:@"Hotel Santa Cruz"]) {
        
        lugar = 3;
        [self.ImageView setImage:[UIImage imageNamed:@"star.png"]];
        
    }
    else if ([[pickerData01 objectAtIndex:row] isEqualToString:@"Campo Mexico Courts"]) {
        
        lugar = 4;
        [self.ImageView setImage:[UIImage imageNamed:@"green.png"]];
        
    }
    else if ([[pickerData01 objectAtIndex:row] isEqualToString:@"Best Western"]) {
        
        lugar = 5;
        [self.ImageView setImage:[UIImage imageNamed:@"green.png"]];
        
    }
    if ([[pickerData01 objectAtIndex:row] isEqualToString:@"Fiesta Inn"]) {
        
        lugar = 6;
        [self.ImageView setImage:[UIImage imageNamed:@"green.png"]];
        
    }
    else if ([[pickerData01 objectAtIndex:row] isEqualToString:@"Monumental Express"]) {
        
        lugar = 7;
        [self.ImageView setImage:[UIImage imageNamed:@"green.png"]];
        
    }
    else if ([[pickerData01 objectAtIndex:row] isEqualToString:@"Gobernador"]) {
        
        lugar = 8;
        [self.ImageView setImage:[UIImage imageNamed:@"green.png"]];
        
    }
    else if ([[pickerData01 objectAtIndex:row] isEqualToString:@"Posada San Jorge"]) {
        
        lugar = 9;
        [self.ImageView setImage:[UIImage imageNamed:@"green.png"]];
        
    }
    else if ([[pickerData01 objectAtIndex:row] isEqualToString:@"Rincon Real Suites"]) {
        
        lugar = 10;
        [self.ImageView setImage:[UIImage imageNamed:@"green.png"]];
        
    }
    else if ([[pickerData01 objectAtIndex:row] isEqualToString:@"Hostal la monja"]) {
        
        lugar = 11;
        [self.ImageView setImage:[UIImage imageNamed:@"green.png"]];
        
    }
    else if ([[pickerData01 objectAtIndex:row] isEqualToString:@"Casa Blanca"]) {
        
        lugar = 12;
        [self.ImageView setImage:[UIImage imageNamed:@"green.png"]];
        
    }
    else if ([[pickerData01 objectAtIndex:row] isEqualToString:@"Florida Plaza"]) {
        
        lugar = 13;
        [self.ImageView setImage:[UIImage imageNamed:@"green.png"]];
        
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
*/

-(IBAction)OcultarTeclado:(id)sender{
    
}

-(IBAction)OcultarText{
    [text resignFirstResponder];
}


@end
