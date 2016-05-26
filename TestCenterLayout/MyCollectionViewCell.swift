//
//  MyCollectionViewCell.swift
//  
//
//  Created by Jose Manuel Perez on 5/25/16.
//
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var label: UILabel!
    @IBOutlet weak var tagNameMaxWidthConstraint: NSLayoutConstraint!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        self.clipsToBounds = false
//        self.contentView.clipsToBounds = false
//        self.translatesAutoresizingMaskIntoConstraints = false
//        self.tagNameMaxWidthConstraint.constant = UIScreen.mainScreen().bounds.width - 8 * 2 - 8 * 2
    }
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: self.label.intrinsicContentSize().width + 20,
                          height: self.label.intrinsicContentSize().height + 20);
//
    }
    
    
    
    
//    - (CGSize)intrinsicContentSize
//    {
//    CGSize size = self.label.intrinsicContentSize;
//    size.width += 20;
//    size.height += 20;
//    return size;
//    }

    
    
/**
     
     initWithFrame:(CGRect)frame
     {
     self = [super initWithFrame:frame];
     
     if (self)
     {
     self.clipsToBounds = NO;
     self.contentView.clipsToBounds = NO;
     
     self.contentView.layer.borderColor = [UIColor blueColor].CGColor;
     self.contentView.layer.borderWidth = 1.f;
     
     self.label = [UILabel new];
     self.label.translatesAutoresizingMaskIntoConstraints = NO;
     self.label.font = [UIFont systemFontOfSize:14];
     self.label.backgroundColor = [UIColor clearColor];
     self.label.textColor = [UIColor blueColor];
     [self.contentView addSubview:self.label];
     
     NSDictionary *views = NSDictionaryOfVariableBindings(_label);
     
     [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-10-[_label]" options:0 metrics:nil views:views]];
     [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|-10-[_label]" options:0 metrics:nil views:views]];
     
     }
     
     return self;
     }
     
     - (CGSize)intrinsicContentSize
     {
     CGSize size = self.label.intrinsicContentSize;
     size.width += 20;
     size.height += 20;
     return size;
     }
     
     
     
 **/


}
