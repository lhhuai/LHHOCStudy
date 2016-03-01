//
//  LHHLoginPassword.m
//  LHHOCStudy
//
//  Created by seaphy on 16/3/1.
//  Copyright © 2016年 seaphy. All rights reserved.
//

#import "LHHLoginPasswordCell.h"
#import "LHHDefines.h"

@interface LHHLoginPasswordCell()

@property (nonatomic, strong) UILabel *passwordLabel;
@property (nonatomic, strong) UITextField *passwordField;

@end

@implementation LHHLoginPasswordCell

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupView];
    }
    return self;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setupView];
    }
    return self;
}

- (void)setupView {
    self.passwordLabel = [[UILabel alloc] initWithFrame:CGRectMake(14, 10, 80, 20)];
    self.passwordLabel.text = @"Password";
    self.passwordLabel.textAlignment = NSTextAlignmentLeft;
    [self addSubview:self.passwordLabel];
    
    self.passwordField = [[UITextField alloc] initWithFrame:CGRectMake(94, 10, SCREEN_WIDTH - 94 - 10, 20)];
    self.passwordField.placeholder = @"Enter password";
    self.passwordField.secureTextEntry = YES;
    [self addSubview:self.passwordField];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end
