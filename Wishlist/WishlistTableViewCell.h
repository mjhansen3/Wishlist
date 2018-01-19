//
//  WishlistTableViewCell.h
//  Wishlist
//
//  Created by Matthew Jerdidah Hansen on 10/01/2018.
//  Copyright © 2018 Matthew Jerdidah Hansen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WishlistTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *TitleLable;
@property (strong, nonatomic) IBOutlet UILabel *DatesLable;
@property (strong, nonatomic) IBOutlet UILabel *DescriptionLable;
@property (strong, nonatomic) IBOutlet UIImageView *ThumbImage;

@end
