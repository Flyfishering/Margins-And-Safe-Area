//
//  ViewController.m
//  IOS_demo
//
//  Created by Apple on 2021/4/2.
//

#import "ViewController.h"
#import "TableviewDemoViewController.h"

@interface ViewController ()
@property(nonatomic, strong) UIView *redView;
@property(nonatomic, strong) UIView *greenView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.redView.frame = self.view.bounds;
    
//    self.viewRespectsSystemMinimumLayoutMargins = YES;
//    self.view.insetsLayoutMarginsFromSafeArea = YES;
//
//    NSString *systemMinimumLayoutMargins = NSStringFromDirectionalEdgeInsets(self.systemMinimumLayoutMargins);
//
//    NSLog(@"systemMinimumLayoutMargins = %@",systemMinimumLayoutMargins);

//    [self demo_safeAreaLayoutGuide_layoutMarginsGuide];
//    [self demo_layoutMargins];
//    [self demo_directionalLayoutMargins];
//    [self demo_directionalLayoutMargins_autoresizingMask];
//    [self demo_additionalSafeAreaInsets];
//    [self demo_insetsLayoutMarginsFromSafeArea];
//    [self demo_viewRespectsSystemMinimumLayoutMargins];
//    [self demo_preservesSuperviewLayoutMargins];
//    [self demo_constraintEqualToSystemSpacing];
//    [self demo_UIStackView_isLayoutMarginsRelativeArrangement];
//    [self demo_UIScrollView_contentInsetAdjustmentBehavior_contentInset_contentLayoutGuide];
    [self dmeo_tableview];

}
- (void)demo_safeAreaLayoutGuide_layoutMarginsGuide
{
    [self.view addSubview:self.redView];
    self.redView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view.safeAreaLayoutGuide.topAnchor constraintEqualToAnchor:self.redView.topAnchor].active = YES;
    [self.view.safeAreaLayoutGuide.leadingAnchor constraintEqualToAnchor:self.redView.leadingAnchor].active = YES;
    [self.view.safeAreaLayoutGuide.trailingAnchor constraintEqualToAnchor:self.redView.trailingAnchor].active = YES;
    [self.view.safeAreaLayoutGuide.bottomAnchor constraintEqualToAnchor:self.redView.bottomAnchor].active = YES;

    [self.redView addSubview:self.greenView];
        self.greenView.preservesSuperviewLayoutMargins = YES;

    self.greenView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.redView.layoutMarginsGuide.topAnchor constraintEqualToAnchor:self.greenView.topAnchor].active = YES;
    [self.redView.layoutMarginsGuide.leadingAnchor constraintEqualToAnchor:self.greenView.leadingAnchor].active = YES;
    [self.redView.layoutMarginsGuide.trailingAnchor constraintEqualToAnchor:self.greenView.trailingAnchor].active = YES;
    [self.redView.layoutMarginsGuide.bottomAnchor constraintEqualToAnchor:self.greenView.bottomAnchor].active = YES;
}

- (void)demo_layoutMargins
{
    [self.view addSubview:self.redView];
    self.redView.translatesAutoresizingMaskIntoConstraints = NO;
    self.redView.layoutMargins = UIEdgeInsetsMake(40, 40, 40, 40);
//    self.redView.directionalLayoutMargins = NSDirectionalEdgeInsetsMake(40, 40, 40, 40);

    [self.redView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [self.redView.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;
    [self.redView.widthAnchor constraintEqualToConstant:200].active = YES;
    [self.redView.heightAnchor constraintEqualToConstant:200].active = YES;
    
    [self.redView addSubview:self.greenView];
    self.greenView.translatesAutoresizingMaskIntoConstraints = NO;
//    self.greenView.preservesSuperviewLayoutMargins = YES;

    [self.greenView.topAnchor constraintEqualToAnchor:self.redView.layoutMarginsGuide.topAnchor].active = YES;
    [self.greenView.leadingAnchor constraintEqualToAnchor:self.redView.layoutMarginsGuide.leadingAnchor].active = YES;
    [self.greenView.trailingAnchor constraintEqualToAnchor:self.redView.layoutMarginsGuide.trailingAnchor].active = YES;
    [self.greenView.bottomAnchor constraintEqualToAnchor:self.redView.layoutMarginsGuide.bottomAnchor].active = YES;

}

- (void)demo_directionalLayoutMargins
{
    [self.view addSubview:self.redView];

    self.redView.directionalLayoutMargins = NSDirectionalEdgeInsetsMake(100, 40, 100, 40);

    self.redView.translatesAutoresizingMaskIntoConstraints = false;
    
//    self.redView.preservesSuperviewLayoutMargins = YES;

    [self.view.safeAreaLayoutGuide.topAnchor constraintEqualToAnchor:self.redView.topAnchor].active = YES;
    [self.view.safeAreaLayoutGuide.leadingAnchor constraintEqualToAnchor:self.redView.leadingAnchor].active = YES;
    [self.view.safeAreaLayoutGuide.trailingAnchor constraintEqualToAnchor:self.redView.trailingAnchor].active = YES;
    [self.view.safeAreaLayoutGuide.bottomAnchor constraintEqualToAnchor:self.redView.bottomAnchor].active = YES;

    
    
    [self.redView addSubview:self.greenView];
    self.greenView.translatesAutoresizingMaskIntoConstraints = false;
//    self.greenView.preservesSuperviewLayoutMargins = YES;
    [self.redView.layoutMarginsGuide.topAnchor constraintEqualToAnchor:self.greenView.topAnchor].active = YES;
    [self.redView.layoutMarginsGuide.leadingAnchor constraintEqualToAnchor:self.greenView.leadingAnchor].active = YES;
    [self.redView.layoutMarginsGuide.trailingAnchor constraintEqualToAnchor:self.greenView.trailingAnchor].active = YES;
    [self.redView.layoutMarginsGuide.bottomAnchor constraintEqualToAnchor:self.greenView.bottomAnchor].active = YES;
}

- (void)demo_directionalLayoutMargins_autoresizingMask
{
    self.view.directionalLayoutMargins = NSDirectionalEdgeInsetsMake(100, 100, 100, 100);
    [self.view addSubview:self.redView];
    self.redView.frame = CGRectMake(
                                    self.view.directionalLayoutMargins.leading,
                                    self.view.directionalLayoutMargins.top,
                                    self.view.frame.size.width - self.view.directionalLayoutMargins.leading - self.view.directionalLayoutMargins.trailing,
                                    self.view.frame.size.height - self.view.directionalLayoutMargins.top - self.view.directionalLayoutMargins.bottom);
    self.redView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
}

- (void)demo_additionalSafeAreaInsets
{
     self.additionalSafeAreaInsets = UIEdgeInsetsMake(100, 100, 100, 100);
    [self.view addSubview:self.redView];
    
    self.redView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.redView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor].active = YES;
    [self.redView.leadingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.leadingAnchor].active = YES;
    [self.redView.trailingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.trailingAnchor].active = YES;
    [self.redView.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor].active = YES;
}

- (void)demo_insetsLayoutMarginsFromSafeArea
{
    self.view.directionalLayoutMargins = NSDirectionalEdgeInsetsMake(5, 5, 5, 5);
    self.view.insetsLayoutMarginsFromSafeArea = NO;
    
    [self.view addSubview:self.redView];
    self.redView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.redView.topAnchor constraintEqualToAnchor:self.view.layoutMarginsGuide.topAnchor].active = YES;
    [self.redView.leadingAnchor constraintEqualToAnchor:self.view.layoutMarginsGuide.leadingAnchor].active = YES;
    [self.redView.trailingAnchor constraintEqualToAnchor:self.view.layoutMarginsGuide.trailingAnchor].active = YES;
    [self.redView.bottomAnchor constraintEqualToAnchor:self.view.layoutMarginsGuide.bottomAnchor].active = YES;
}

- (void)demo_viewRespectsSystemMinimumLayoutMargins
{
    self.viewRespectsSystemMinimumLayoutMargins = NO;
    self.view.insetsLayoutMarginsFromSafeArea = NO;
    self.view.layoutMargins = UIEdgeInsetsMake(5, 5, 5, 5);

    [self.view addSubview:self.redView];
    self.redView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.redView.topAnchor constraintEqualToAnchor:self.view.layoutMarginsGuide.topAnchor].active = YES;
    [self.redView.leadingAnchor constraintEqualToAnchor:self.view.layoutMarginsGuide.leadingAnchor].active = YES;
    [self.redView.trailingAnchor constraintEqualToAnchor:self.view.layoutMarginsGuide.trailingAnchor].active = YES;
    [self.redView.bottomAnchor constraintEqualToAnchor:self.view.layoutMarginsGuide.bottomAnchor].active = YES;
}

- (void)demo_preservesSuperviewLayoutMargins
{
    self.viewRespectsSystemMinimumLayoutMargins = NO;
    self.view.insetsLayoutMarginsFromSafeArea = NO;
    self.view.layoutMargins = UIEdgeInsetsMake(140, 140, 140, 140);
    
    self.redView.preservesSuperviewLayoutMargins = YES;
    [self.view addSubview:self.redView];
    self.redView.translatesAutoresizingMaskIntoConstraints = NO;

    [self.redView.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
    [self.redView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = YES;
    [self.redView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = YES;
    [self.redView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = YES;

    [self.redView addSubview:self.greenView];
    self.greenView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.greenView.topAnchor constraintEqualToAnchor:self.redView.layoutMarginsGuide.topAnchor].active = YES;
    [self.greenView.bottomAnchor constraintEqualToAnchor:self.redView.layoutMarginsGuide.bottomAnchor].active  = YES;
    [self.greenView.leadingAnchor constraintEqualToAnchor:self.redView.layoutMarginsGuide.leadingAnchor].active = YES;
    [self.greenView.trailingAnchor constraintEqualToAnchor:self.redView.layoutMarginsGuide.trailingAnchor].active = YES;

}

- (void)demo_constraintEqualToSystemSpacing
{
    [self.view addSubview:self.redView];
    self.redView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.redView.topAnchor constraintEqualToSystemSpacingBelowAnchor:self.view.topAnchor multiplier:1.0].active = YES;
    [self.redView.leadingAnchor constraintEqualToSystemSpacingAfterAnchor:self.view.leadingAnchor multiplier:1.0].active = YES;
    [self.view.trailingAnchor constraintEqualToSystemSpacingAfterAnchor:self.redView.trailingAnchor multiplier:1.0].active = YES;
    [self.view.bottomAnchor constraintEqualToSystemSpacingBelowAnchor:self.redView.bottomAnchor multiplier:1.0].active = YES;
    
    [self.redView addSubview:self.greenView];
    self.greenView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.greenView.topAnchor constraintEqualToAnchor:self.view.layoutMarginsGuide.topAnchor].active = YES;
    [self.greenView.bottomAnchor constraintEqualToAnchor:self.view.layoutMarginsGuide.bottomAnchor].active  = YES;
    [self.greenView.leadingAnchor constraintEqualToAnchor:self.view.layoutMarginsGuide.leadingAnchor].active = YES;
    [self.greenView.trailingAnchor constraintEqualToAnchor:self.view.layoutMarginsGuide.trailingAnchor].active = YES;
    
}

- (void)demo_UIStackView_isLayoutMarginsRelativeArrangement
{
    self.view.layoutMargins = UIEdgeInsetsMake(100, 100, 100, 100);
    UIStackView *stackView = [[UIStackView alloc] init];
    [self.view addSubview:stackView];
    stackView.layoutMarginsRelativeArrangement = YES;
    stackView.translatesAutoresizingMaskIntoConstraints = NO;
    stackView.distribution = UIStackViewDistributionFillEqually;
    
    [stackView.topAnchor constraintEqualToAnchor:self.view.layoutMarginsGuide.topAnchor].active = YES;
    [stackView.bottomAnchor constraintEqualToAnchor:self.view.layoutMarginsGuide.bottomAnchor].active = YES;
    [stackView.leadingAnchor constraintEqualToAnchor:self.view.layoutMarginsGuide.leadingAnchor].active = YES;
    [stackView.trailingAnchor constraintEqualToAnchor:self.view.layoutMarginsGuide.trailingAnchor].active = YES;

    [stackView addArrangedSubview:self.redView];
    [stackView addArrangedSubview:self.greenView];
}

- (void)demo_UIScrollView_contentInsetAdjustmentBehavior_contentInset_contentLayoutGuide
{
    UIScrollView *scrollView = [UIScrollView new];
    scrollView.backgroundColor = [UIColor orangeColor];
    scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentScrollableAxes;
    scrollView.contentSize = CGSizeMake(1000, 0);
    scrollView.contentInset = UIEdgeInsetsMake(5, 5, 5, 5);
    scrollView.contentOffset = CGPointMake(-5, 0);
    [self.view addSubview:scrollView];
    scrollView.translatesAutoresizingMaskIntoConstraints = NO;
    [scrollView.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;
    [scrollView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = YES;
    [scrollView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = YES;
    [scrollView.heightAnchor constraintEqualToConstant:80].active = YES;

    [scrollView addSubview:self.redView];
    self.redView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.redView.topAnchor constraintEqualToAnchor:scrollView.contentLayoutGuide.topAnchor].active = YES;
    [self.redView.leadingAnchor constraintEqualToAnchor:scrollView.contentLayoutGuide.leadingAnchor].active = YES;
    [self.redView.heightAnchor constraintEqualToConstant:70].active = YES;
    [self.redView.widthAnchor constraintEqualToConstant:70].active = YES;
}

- (void)dmeo_tableview
{
    UIButton *button = [UIButton new];
    [self.view addSubview:button];
    
    button.translatesAutoresizingMaskIntoConstraints = NO;
    [button.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [button.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;
    [button.widthAnchor constraintEqualToConstant:200].active = YES;
    [button.heightAnchor constraintEqualToConstant:50].active = YES;

    button.backgroundColor = [UIColor systemGrayColor];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button setTitle:@"进入 tableview demo" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(pushToTableviewVC) forControlEvents:UIControlEventTouchUpInside];
}
//MARK: - event
- (void)pushToTableviewVC
{
    [self.navigationController pushViewController:[TableviewDemoViewController new] animated:YES];
}
//MARK: -  get
- (UIView *)redView
{
    if (!_redView) {
        _redView = [UIView new];
        _redView.backgroundColor = [UIColor redColor];
    }
    return _redView;
}

- (UIView *)greenView
{
    if (!_greenView) {
        _greenView = [UIView new];
        _greenView.backgroundColor = [UIColor greenColor];
    }
    return _greenView;
}

@end
