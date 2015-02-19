//
//  Opinion.m
//  Durango Turistico
//
//  Created by Claudia Oliva on 09/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "Opinion.h"

@interface Opinion ()

@end

@implementation Opinion


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
    
    if ([labelPrueba.text isEqualToString:@"--"] ) {
        NSLog(@"Blog...");
    }
    else {
        
    //Scroll_Principal
    [scrollOpinion setScrollEnabled:YES];
    [scrollOpinion setContentSize:CGSizeMake(50, 550)];
    
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Durango" message:@"Danos tu opinión sincera sobre el Estado de Durango, juntos podemos mejorar tu próxima visita" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    
    [alert show];
    
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

#pragma eMail - Envio de Correo

-(void)mailIt {MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
    
    picker.mailComposeDelegate = self;
    [picker setSubject:@"Durango - Informes"];
    
    NSArray *aReceptores=[NSArray arrayWithObjects:@"turismo@durango.gob.mx", nil];
    [picker setToRecipients:aReceptores];
    
    
    UIImage *roboPic = [UIImage imageNamed:@"nofondo.png"];
    NSData *imageData = UIImageJPEGRepresentation(roboPic, 1);
    [picker addAttachmentData:imageData mimeType:@"image/png" fileName:@"nofondo.png"];
    
    NSString *name = nombre.text;
    NSString *age = edad.text;
    NSString *good = bueno.text;
    NSString *bad = malo.text;
    
//    NSString *mensaje = [NSString stringWithFormat:@"#VisitaDurango %@", msj];
    
    NSString *msj = [NSString stringWithFormat:@"Hola mi nombre es %@, los visito de %@ , lo que me agrada de su estado es %@ aunque podrian mejorar mas en %@", name, age, good, bad];
    
    NSString *emailBody = msj;
    [picker setMessageBody:emailBody isHTML:YES];
    
    [self presentModalViewController:picker animated:YES];
}

//mail Blog
-(void)mailItBlog {MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
    
    picker.mailComposeDelegate = self;
    [picker setSubject:@"Durango - Informes"];
    
    NSArray *aReceptores=[NSArray arrayWithObjects:@"turismo@durango.gob.mx", nil];
    [picker setToRecipients:aReceptores];
    
    
    UIImage *roboPic = [UIImage imageNamed:@"nofondo.png"];
    NSData *imageData = UIImageJPEGRepresentation(roboPic, 1);
    [picker addAttachmentData:imageData mimeType:@"image/png" fileName:@"nofondo.png"];
    
        
    //    NSString *mensaje = [NSString stringWithFormat:@"#VisitaDurango %@", msj];
    
    NSString *msj = [NSString stringWithFormat:textView.text];
    
    NSString *emailBody = msj;
    [picker setMessageBody:emailBody isHTML:YES];
    
    [self presentModalViewController:picker animated:YES];
}


-(void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error {
    
    [self dismissModalViewControllerAnimated:YES];
}

-(IBAction)Mailsend:(id)sender{
    
    if ([labelPrueba.text isEqualToString:@"--"]) {
        
        [self mailItBlog];
        
    }
    else {
        
        if([bueno.text isEqualToString:@" "] || [malo.text isEqualToString:@" "] || [nombre.text isEqualToString:@" "] || [edad.text isEqualToString:@""]) {
            
            UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Durango" message:@"Por favor llena todos los campos." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
            
            [alert show];

        }
        else {
            [self mailIt];
        }
                
    }
    
    
    
}


-(IBAction)Ocultar:(id)sender{
    
}

-(void)Borrar{
    
    bueno.text = @"";
    malo.text = @"";
    edad.text = @"";
    nombre.text = @"";
    
}


-(IBAction)Clear:(id)sender{
    
    [self Borrar];
    
}

-(IBAction)Teclado:(id)sender{
    
    [textView resignFirstResponder];
    
}

@end
