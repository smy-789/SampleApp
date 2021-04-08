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

// 重写初始化
- (instancetype)init{
    self = [super init];
    if(self){
        
    }
    return self;
}

// UIViewController的生命周期
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
}
- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
}

- (void)viewDidLoad {
    // 所有的视图初始化逻辑
    
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
