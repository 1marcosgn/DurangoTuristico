//
//  DurangoViewController.m
//  Durango Turistico
//
//  Created by Claudia Oliva on 09/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "DurangoViewController.h"

@interface DurangoViewController ()

@end

@implementation DurangoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}



-(IBAction)ocultar:(id)sender{
    
    [text resignFirstResponder];
    
}

-(IBAction)AgregarContacto:(id)sender{
    
    [self saveAgenda];
    
}


-(void)saveAgenda{
    
    //Variable para captar posibles errores
    CFErrorRef error = NULL;
    
    
    //Creamos una referencia a nuestro AddressBook
    ABAddressBookRef iPhoneAddressBook = ABAddressBookCreate();
    
    //Creamos una nueva Persona
    ABRecordRef newPerson = ABPersonCreate();
    
    //Comenzamos agregando algunos datos..
    ABRecordSetValue(newPerson, kABPersonFirstNameProperty, @"Secretaria", &error);
    ABRecordSetValue(newPerson, kABPersonLastNameProperty, @"Turismo", &error);
    
    ABRecordSetValue(newPerson, kABPersonOrganizationProperty, @"Estado Durango", &error);
    ABRecordSetValue(newPerson, kABPersonJobTitleProperty, @"Mexico", &error);
    
    //Agregando un telefono..
    ABMutableMultiValueRef multiPhone = ABMultiValueCreateMutable(kABMultiStringPropertyType);
    ABMultiValueAddValueAndLabel(multiPhone, @"01 (618) 811 11 07", kABPersonPhoneMainLabel, NULL);
    ABMultiValueAddValueAndLabel(multiPhone, @"01 (618) 811 96 77", kABPersonPhoneMobileLabel, NULL);
    ABMultiValueAddValueAndLabel(multiPhone, @"01 (800) 624 65 67", kABOtherLabel, NULL);
    ABRecordSetValue(newPerson, kABPersonPhoneProperty, multiPhone, nil);
    CFRelease(multiPhone);
    
    //Agregando una direccion de correo electronico
    ABMutableMultiValueRef multiEmail = ABMultiValueCreateMutable(kABMultiStringPropertyType);
    ABMultiValueAddValueAndLabel(multiEmail, @"turismo@durango.gob.mx", kABWorkLabel, NULL);
    ABRecordSetValue(newPerson, kABPersonEmailProperty, multiEmail, &error);
    
    
    //Guardado la Informacion
    ABAddressBookAddRecord(iPhoneAddressBook, newPerson, &error);
    ABAddressBookSave(iPhoneAddressBook, &error);
    
    if (error != NULL) {
        
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Durango" message:@"Esta Persona ya esta en su lista de Contactos" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        
        [alert show];
    
    }
    else {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Durango" message:@"Se Agrego correctamente a la Lista de Contactos" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        
        [alert show];
    }
    
}

@end
