//
//  LHHLoginAccount.m
//  LHHOCStudy
//
//  Created by seaphy on 16/3/1.
//  Copyright © 2016年 seaphy. All rights reserved.
//

#import "LHHLoginAccountCell.h"
#import "LHHDefines.h"

@interface LHHLoginAccountCell()

@property (nonatomic, strong) UILabel *accountLabel;
@property (nonatomic, strong) UITextField *accountField;

@end

@implementation LHHLoginAccountCell

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
    self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(14, 10, 80, 20)];
    self.accountLabel.text = @"Account";
    self.accountLabel.textAlignment = NSTextAlignmentLeft;
    [self addSubview:self.accountLabel];
    
    self.accountField = [[UITextField alloc] initWithFrame:CGRectMake(94, 10, SCREEN_WIDTH - 94 - 10, 20)];
    self.accountField.placeholder = @"Enter account";
    [self addSubview:self.accountField];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end
