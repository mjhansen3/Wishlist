//
//  MakeWishViewController.m
//  Wishlist
//
//  Created by Matthew Jerdidah Hansen on 11/01/2018.
//  Copyright © 2018 Matthew Jerdidah Hansen. All rights reserved.
//

#import "MakeWishViewController.h"

@interface MakeWishViewController ()

// @property (weak, nonatomic) IBOutlet UITextView *textView;

@property (strong, nonatomic) FIRDatabaseReference *ref;

@end

@implementation MakeWishViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Set Firebase Reference
    self.ref = [[FIRDatabase database] reference];
    
    // Do any additional setup after loading the view.
    self->ThumbImage.layer.cornerRadius = ThumbImage.frame.size.height / 2.0;
    self->ThumbImage.clipsToBounds = TRUE;
    
    _DescriptionText.layer.cornerRadius=8.0f;
    _DescriptionText.layer.masksToBounds=YES;
    _TitleText.layer.borderColor=[[UIColor lightGrayColor]CGColor];
    _DescriptionText.layer.borderColor=[[UIColor lightGrayColor]CGColor];
    _DescriptionText.layer.borderWidth= 1.0f;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addWish:(id)sender {
    // code for description
    [[[_ref child:@"Wishlist"] childByAutoId ]
     setValue:@{@"description": _DescriptionText.text, @"title": _TitleText.text}];
    
    // Dismiss the popover when done
    [self dismissViewControllerAnimated:YES completion:NULL];
    
}

- (IBAction)cancelWish:(id)sender {
    
    // Dismiss the popover
    [self dismissViewControllerAnimated:YES completion:NULL];
    
}

- (IBAction)importImage:(id)sender {
    picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    [picker setSourceType: UIImagePickerControllerSourceTypePhotoLibrary];
    [self presentViewController:picker animated:YES completion:NULL];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    [ThumbImage setImage:image];
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [self dismissViewControllerAnimated:YES completion:NULL];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
