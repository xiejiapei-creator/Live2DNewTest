//
//  ViewController.m
//  Live2DNewTest
//
//  Created by 谢佳培 on 2022/8/17.
//

#import "ViewController.h"
#import "MetalLive2DViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"Live2D Demo";

    self.view.backgroundColor = UIColor.whiteColor;

    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"OpenGL" forState:UIControlStateNormal];
    [button setTitleColor:UIColor.redColor forState:UIControlStateNormal];
    [button addTarget:self action:@selector(pushOpenGLVc) forControlEvents:UIControlEventTouchUpInside];
    button.frame = CGRectMake(100, 200, 80, 40);

    [self.view addSubview:button];

    button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"Metal" forState:UIControlStateNormal];
    [button setTitleColor:UIColor.redColor forState:UIControlStateNormal];
    [button addTarget:self action:@selector(pushMetalVc) forControlEvents:UIControlEventTouchUpInside];
    button.frame = CGRectMake(100, 300, 80, 40);

    [self.view addSubview:button];
}

#pragma mark - event response
- (void)pushOpenGLVc {
}

- (void)pushMetalVc {
    MetalLive2DViewController *vc = [MetalLive2DViewController new];
    [self.navigationController pushViewController:vc animated:true];
}
@end
