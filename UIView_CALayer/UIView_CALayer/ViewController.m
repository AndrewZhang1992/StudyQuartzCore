//
//  ViewController.m
//  UIView_CALayer
//
//  Created by Andrew on 2017/2/24.
//  Copyright © 2017年 Andrew. All rights reserved.


#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*
        首先 QuartzCore 的 核心 就是 CoreAnimation （核心动画）
     
     iOS的动画 是依靠自 layer 层来实现。所以 首先 掌握 UIView 和 CALayer 的联系。
     
     首先：
     
     1. UIView 继承自 UIResponder，而 CALayer 继承自 NSObject ，所以 UIView 可以响应事件，而 CALayer 不能响应事件。
     
     2. UIView的frame/bounds/transform是对CALayer的映射（也就是说 调用  UIView 的 frame/bounds/transform 的时候。其实UIView 什么事都没做，只是调用它的root layer 所对应的相关值）
     
     3. UIView 是 CALayer 的代理。CALayer 负责内容的绘制。UIView是负责内容的管理 或者 说是 展示容器。（CALayer 层 除了几个特色的层 AVCaptureVideoPreviewLayer 和 CAShapeLayer ,不需要添加到 UIView中即可显示的，其他的大部分的 Layer 必须放到 UIView上才能显示出内容。否则，都只是利用GPU绘制了，但是仍旧在屏幕上不可见。)
     
     4. iOS的动画。 对于每一个 UIView 都有一个 layer,把这个 layer 且称作RootLayer,而不是 View 的根 Layer的叫做 非 RootLayer。我们对UIView的属性修改时时不会产生默认动画，而对单独 layer属性直接修改会，这个默认动画的时间缺省值是0.25s.
     
        因为：UIView 默认情况下禁止了 layer 动画，但是在 animation block 中又重新启用了它们
     
       关于 View-Layer 协作 ： https://objccn.io/issue-12-4/
                                          http://www.jianshu.com/p/079e5cf0f014
     */

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
