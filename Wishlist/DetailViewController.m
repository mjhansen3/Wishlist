//
//  DetailViewController.m
//  Wishlist
//
//  Created by Matthew Jerdidah Hansen on 10/01/2018.
//  Copyright © 2018 Matthew Jerdidah Hansen. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _TitleLable.text = _DetailModal[0];
    _DescriptionLable.text = _DetailModal[1];
    _DatesLable.text = _DetailModal[2];
    _ThumbImage.image = [UIImage imageNamed:_DetailModal[3]];
    
    self.navigationItem.title = _DetailModal[0];
    self.ThumbImage.layer.cornerRadius = _ThumbImage.frame.size.height / 2.0;
    self.ThumbImage.clipsToBounds = TRUE;
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
