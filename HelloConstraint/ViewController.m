//
//  ViewController.m
//  HelloConstraint
//
//  Created by weboniselab on 01/03/16.
//  Copyright © 2016 weboniselab. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    __weak IBOutlet UIButton *buttonSave;
    __weak IBOutlet UITextView *textViewAddress;
    __weak IBOutlet UIImageView *imgProfilePic;
    __weak IBOutlet UITextField *textName;
    __weak IBOutlet UITextField *textEmailAddress;
    __weak IBOutlet UITextField *textDesignation;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setupStyle:textName];
    [self setupStyle:textEmailAddress];
    [self setupStyle:textViewAddress];
    [self setupStyle:textDesignation];
    [self setupCircularImage:imgProfilePic];
    [self setupStyle:buttonSave];
}

- (IBAction)buttonSaveTapped:(id)sender {
    
}

-(void)setupStyle:(UIView *)view
{
    view.layer.borderColor=[UIColor blueColor].CGColor;
    view.layer.borderWidth = 1;
    view.layer.cornerRadius = 5;
}

-(void)setupCircularImage:(UIImageView *)imageView
{
    imageView.layer.borderWidth = 1;
    imageView.layer.borderColor = [UIColor blueColor].CGColor;
    imageView.layer.cornerRadius = imageView.frame.size.width/2;
    imageView.clipsToBounds = true;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
