//
//  ViewController.m
//  SampleApp
//
//  Created by 盛明钰 on 2021/4/6.
//

#import "ViewController.h"

@interface TestView : UIView


@end

@implementation TestView

- (instancetype)init {
    self = [super init];
    if(self) {
        
    }
    return self;
}

// UIView的生命周期
- (void)willMoveToSuperview:(nullable UIView *)newSuperview {
    [super willMoveToSuperview:newSuperview];
}
- (void)didMoveToSuperview {
    [super didMoveToSuperview];
}
- (void)willMoveToWindow:(nullable UIWindow *)newWindow {
    [super willMoveToWindow:newWindow];
}
- (void)didMoveToWindow {
    [super didMoveToWindow];
}


@end

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];   // 将背景设置为白色
    
    TestView *view = [[TestView alloc] init];   // 申请控件 初始化视图
    view.backgroundColor = [UIColor redColor];
    view.frame = CGRectMake(100, 100, 100, 100);    // x, y, width, heigth
    [self.view addSubview:view];    // 将view粘贴到父view中，即self.view
    
//    UIView *view2 = [[UIView alloc] init];
//    view2.frame = CGRectMake(150, 150, 100, 100);
//    view2.backgroundColor = [UIColor greenColor];
//    [self.view addSubview:view2];
    
}


@end
