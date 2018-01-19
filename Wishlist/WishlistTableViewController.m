//
//  WishlistTableViewController.m
//  Wishlist
//
//  Created by Matthew Jerdidah Hansen on 10/01/2018.
//  Copyright © 2018 Matthew Jerdidah Hansen. All rights reserved.
//

#import "WishlistTableViewController.h"
#import "DetailViewController.h"
#import "WishlistTableViewCell.h"

@interface WishlistTableViewController ()

@property (strong, nonatomic) FIRDatabaseReference *ref;
// @property (strong, nonatomic) FIRDatabaseHandle *databaseHandle;

@end

@implementation WishlistTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
    
    //    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCompose target:self action:@selector(insertNewObject:)];
    //    self.navigationItem.rightBarButtonItem = addButton;
    //    self.makeWishViewController = (MakeWishViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
    
    // Set Firebase Reference
    self.ref = [[FIRDatabase database] reference];
    
    // Retrieve Wishlists From Firebase And Listen For Changes
    // [[[_ref child:@"Wishlist"] observeEventType: FIRDataEventTypeChildAdded withBlock:^(FIRDataSnapshot * _Nonnull snapshot) {
        
        // Try to convert the value of data to a string
        // NSString *post = snapshot(value);
        
        // Code to execute when data is added to Wishlist
        // Take the value from the snapshot and add to it to the makewish array
        
        
        
    // }];
    
    
    _Title = @[@"",];
    
    _Description = @[@"",];
    
    _Image = @[@"",];
    
    _Dates = @[@"",];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _Title.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    WishlistTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WishlistTableCell" forIndexPath:indexPath];
    
    // Configure the cell...
    long row = [indexPath row];
    
    cell.TitleLable.text = _Title[row];
    cell.DatesLable.text = _Dates[row];
    cell.DescriptionLable.text = _Description[row];
    cell.ThumbImage.image = [UIImage imageNamed:_Image[row]];
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"ShowDetails"]) {
        DetailViewController *detailViewController = [segue destinationViewController];
        
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        
        long row = [myIndexPath row];
        detailViewController.DetailModal = @[_Title[row],_Description[row],_Dates[row],_Image[row]];
    }
}


// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
}


/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end

