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
    
    // 创建一个手势操作，点击后执行pushController方法
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pushController)];
    [view addGestureRecognizer:tapGesture];
}

- (void)pushController{
    
    UIViewController *viewController = [[UIViewController alloc]init];
    viewController.view.backgroundColor = [UIColor whiteColor];
    viewController.navigationItem.title = @"内容";
    [self.navigationController pushViewController:viewController animated:YES];
    
    // 为 navigationBar 设置右键标题
    viewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"右键标题" style:UIBarButtonItemStylePlain target:self action:nil];
    
    // viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"左键标题" style:UIBarButtonItemStylePlain target:self action:nil];
}

@end

