//
//  Fotos.m
//  Durango Turistico
//
//  Created by Claudia Oliva on 09/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "Fotos.h"

@interface Fotos ()

@end

@implementation Fotos

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
    
    
	UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Durango" message:@"Comparte las Imagenes de Durango con tus Amigos" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    
    [alert show];
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




-(IBAction)tomarFoto:(id)sender{
    
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    [self presentModalViewController:picker animated:YES];    
}


//Recibe el mensaje cuando el controlador a finalizado.
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    
    //Quita la vista del controlador.
    [picker dismissModalViewControllerAnimated:YES];
    
    //Establece la imagen tomada en el objeto UIImageView.
    imagenView.image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    
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
    
    NSString *msj = campoTexto.text;
    
    NSString *mensaje = [NSString stringWithFormat:@"#VisitaDurango %@", msj];
    
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


-(IBAction)ocultaTeclado:(id)sender{
    
    
}

@end
