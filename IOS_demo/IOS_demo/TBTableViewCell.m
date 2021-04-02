//
//  TBTableViewCell.m
//  IOS_demo
//
//  Created by Apple on 2021/4/2.
//

#import "TBTableViewCell.h"

@implementation TBTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor =[UIColor yellowColor];
        [self.contentView addSubview:self.label];
        self.label.translatesAutoresizingMaskIntoConstraints = NO;
        
        
        [self.label.topAnchor constraintEqualToAnchor:self.contentView.layoutMarginsGuide.topAnchor].active = YES;
        [self.label.bottomAnchor constraintEqualToAnchor:self.contentView.layoutMarginsGuide.bottomAnchor].active = YES;
        [self.label.leadingAnchor constraintEqualToAnchor:self.contentView.layoutMarginsGuide.leadingAnchor].active = YES;
        [self.label.trailingAnchor constraintEqualToAnchor:self.contentView.layoutMarginsGuide.trailingAnchor].active = YES;
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

//MARK: - get

- (UILabel *)label
{
    if (!_label) {
        _label = [UILabel new];
    }
    return _label;
}
@end
