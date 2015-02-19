//
//  Mapas.h
//  Durango Turistico
//
//  Created by Claudia Oliva on 09/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface Mapas : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>{
    
    IBOutlet MKMapView *mapaDurango;
    
    UIImageView *ImageView;
    UIPickerView *picker;
    NSArray *pickerData;
    
    IBOutlet UIView *vista;
}


@property (nonatomic, retain) IBOutlet UIImageView *ImageView;

@property (nonatomic, retain) IBOutlet UIPickerView *picker;

@property (nonatomic, retain) NSArray *pickerData;

-(void)PonerAnotacion;

-(IBAction)ubicacionActual:(id)sender;

-(IBAction)Prueba:(id)sender;

@end
