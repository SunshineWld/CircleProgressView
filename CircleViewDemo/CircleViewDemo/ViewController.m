//
//  ViewController.m
//  CircleViewDemo
//
//  Created by 王丽丹 on 16/7/28.
//  Copyright © 2016年 王丽丹. All rights reserved.
//

#import "ViewController.h"
#import "BaseCircleView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet BaseCircleView *circleView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

//    self.circleView.progress = 0.6;
    

}
- (IBAction)buttonClick:(id)sender {
    
    //改变进度
    float value = arc4random()%100/100.0;
    [self.circleView setProgress:value animated:YES];
}
- (IBAction)changeLineWidth:(id)sender {
    float value = arc4random()%200/10.0;
    self.circleView.lineWidth = value;
}
- (IBAction)changeLineColor:(id)sender {
    UIColor *color1 = [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
    UIColor *color2 = [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
    UIColor *color3 = [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
    UIColor *color4 = [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
    self.circleView.minLineColor = color1;
    self.circleView.midLineColor = color2;
    self.circleView.maxLineColor = color3;
    self.circleView.tintColor = color4;
}
- (IBAction)changeLabelColor:(id)sender {
    UIColor *color1 = [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
    self.circleView.textColor = color1;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end






















