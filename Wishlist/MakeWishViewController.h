//
//  MakeWishViewController.h
//  Wishlist
//
//  Created by Matthew Jerdidah Hansen on 11/01/2018.
//  Copyright © 2018 Matthew Jerdidah Hansen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
@import FirebaseDatabase;

@interface MakeWishViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate> {

    IBOutlet UIImageView *ThumbImage;
    UIImagePickerController *picker;
    UIImage *image;
    
}

@property (strong, nonatomic) IBOutlet UITextField *TitleText;
@property (strong, nonatomic) IBOutlet UITextField *DatesText;
@property (strong, nonatomic) IBOutlet UITextView *DescriptionText;

- (IBAction)importImage:(id)sender;

@end
