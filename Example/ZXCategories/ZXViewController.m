//
//  ZXViewController.m
//  ZXCategories
//
//  Created by Apple on 07/21/2017.
//  Copyright (c) 2017 Apple. All rights reserved.
//

#import "ZXViewController.h"
#import <ZXCategories/NSString+ZXEmoji.h>
#import <ZXCategories/NSString+ZXSize.h>
#import <ZXCategories/UIIMAGE+ZXResize.h>
#import <ZXCategories/UIButton+ZXInterval.h>
@interface ZXViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ZXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    UIImage *image = [UIImage imageNamed:@"1.jpg"];
//    UIImage *newImage = [image zx_resizedImage:CGSizeMake(100, 100) interpolationQuality:kCGInterpolationLow];
//    self.imageView.image = newImage;
//
    [UIButton zx_exchangeClickMethod];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"test" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor redColor];
    btn.zx_clickInterval = 5;
    btn.zx_ignoreClickInterval = NO;
    [btn sizeToFit];
    btn.center = CGPointMake(self.view.bounds.size.width / 2, self.view.bounds.size.height / 2 );
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(aaa) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
    
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
//    btn1.zx_clickInterval = 0.1;
//    btn1.zx_ignoreClickInterval = NO;
    [btn1 setTitle:@"test" forState:UIControlStateNormal];
    btn1.backgroundColor = [UIColor redColor];

    [btn1 sizeToFit];
    btn1.center = CGPointMake(self.view.bounds.size.width / 2, self.view.bounds.size.height / 2 + 60);
    [self.view addSubview:btn1];
    [btn1 addTarget:self action:@selector(bbb) forControlEvents:UIControlEventTouchUpInside];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)aaa {
    NSLog(@"test");
}

- (void)bbb {
    NSLog(@"bbb");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
