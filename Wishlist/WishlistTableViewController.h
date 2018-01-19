//
//  WishlistTableViewController.h
//  Wishlist
//
//  Created by Matthew Jerdidah Hansen on 10/01/2018.
//  Copyright © 2018 Matthew Jerdidah Hansen. All rights reserved.
//

#import <UIKit/UIKit.h>
@import FirebaseDatabase;

@class DetailViewController;
@class MakeWishViewController;

@interface WishlistTableViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (strong, nonatomic) MakeWishViewController *makeWishViewController;

@property (nonatomic, strong) NSArray *Image;
@property (nonatomic, strong) NSArray *Title;
@property (nonatomic, strong) NSArray *Description;
@property (nonatomic, strong) NSArray *Dates;

@end

