//
//  SceneDelegate.h
//  SampleApp
//
//  Created by 盛明钰 on 2021/4/6.
//

// iOS13后，AppDelegate的职责发生了变化，简单说就是和UI生命周期相关的回调都交给了SceneDelegate这个delegate
// 而AppDelegate主要负责和 app 生命周期相关的回调。

#import <UIKit/UIKit.h>

@interface SceneDelegate : UIResponder <UIWindowSceneDelegate>

@property (strong, nonatomic) UIWindow * window;

@end

