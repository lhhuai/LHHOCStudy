//
//  LHHLoginViewController.m
//  LHHOCStudy
//
//  Created by seaphy on 16/3/1.
//  Copyright © 2016年 seaphy. All rights reserved.
//

#import "LHHLoginViewController.h"
#import "LHHDefines.h"
#import "LHHLoginAccountCell.h"
#import "LHHLoginPasswordCell.h"

static NSString *kLHHLoginAccountCellIdentifier = @"LHHLoginAccountCellIdentifier";
static NSString *kLHHLoginPasswordCellIdentifier = @"LHHLoginPasswordCellIdentifier";

@interface LHHLoginViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation LHHLoginViewController

- (void)loadView {
    [super loadView];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    // table view
    CGRect tableViewFrame = CGRectMake(0, 0, SCREEN_WIDTH, VIEW_HIDETABBAR_HEIGHT);
    self.tableView = [[UITableView alloc] initWithFrame:tableViewFrame style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.backgroundColor = [UIColor clearColor];
    [self.tableView registerClass:[LHHLoginAccountCell class] forCellReuseIdentifier:kLHHLoginAccountCellIdentifier];
    [self.tableView registerClass:[LHHLoginPasswordCell class] forCellReuseIdentifier:kLHHLoginPasswordCellIdentifier];
    [self.view addSubview:self.tableView];
    
    // table header view
    UIView *tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 80)];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(40, 30, SCREEN_WIDTH - 80, 20)];
    titleLabel.text = @"Log In";
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [tableHeaderView addSubview:titleLabel];
    self.tableView.tableHeaderView = tableHeaderView;
    
    // table footer view
    UIView *tableFooterView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 60)];
    UIButton *loginButton = [[UIButton alloc] initWithFrame:CGRectMake(10, 10, SCREEN_WIDTH - 20, 30)];
    [loginButton setTitle:@"Log In" forState:UIControlStateNormal];
    loginButton.backgroundColor = [UIColor greenColor];
    [tableFooterView addSubview:loginButton];

    self.tableView.tableFooterView = tableFooterView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 40;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        LHHLoginAccountCell *loginAccountCell = [tableView dequeueReusableCellWithIdentifier:kLHHLoginAccountCellIdentifier forIndexPath:indexPath];
        [loginAccountCell setSelectionStyle:UITableViewCellSelectionStyleNone];
        return loginAccountCell;
    } else {
        LHHLoginPasswordCell *loginPasswordCell = [tableView dequeueReusableCellWithIdentifier:kLHHLoginPasswordCellIdentifier forIndexPath:indexPath];
        [loginPasswordCell setSelectionStyle:UITableViewCellSelectionStyleNone];
        return loginPasswordCell;
    }
}

@end
