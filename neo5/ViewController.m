//
//  ViewController.m
//  neo5
//
//  Created by Yongjia Liu on 13-7-7.
//  Copyright (c) 2013年 Yongjia Liu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    UIImageView *image=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    UIImageView *imageBack=[[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    image.layer.masksToBounds=YES;
    imageBack.layer.masksToBounds=YES;
    CGFloat cr=image.layer.cornerRadius;
    if (cr==0) {
        image.layer.cornerRadius=15.0;
        imageBack.layer.cornerRadius=15.0;
    }
    image.image=[UIImage imageNamed:@"01.jpg"];
    imageBack.image=[UIImage imageNamed:@"02.jpg"];
    image.tag=10;
    imageBack.tag=20;
    [self.view addSubview:image];
    [self.view addSubview:imageBack];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch=[touches anyObject];
    UIImageView *view=(UIImageView *)[self.view viewWithTag:10];
    UIImageView *viewBack=(UIImageView *)[self.view viewWithTag:20];
    //[UIView transitionFromView:view toView:viewBack duration:0.75 options:nil completion:nil];
    [UIImageView transitionFromView:view
                        toView:viewBack
                      duration:0.5
                       options:UIViewAnimationOptionTransitionCurlDown
                    completion:^(BOOL finished){
                        /* do something on animation completion */
                    }];

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
