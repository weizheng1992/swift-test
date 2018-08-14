
//
//  MineHeaderView.swift
//  uiView
//
//  Created by yy on 2018/8/14.
//  Copyright © 2018年 J&K. All rights reserved.
//

import UIKit

class MineHeaderView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    
    
    private lazy var avatarImageView: UIImageView = {
        let url = URL(string:"http://img3.duitang.com/uploads/item/201510/12/20151012172435_wuZQf.thumb.700_0.jpeg")
        let data = try! Data(contentsOf: url!)
        let smallImage = UIImage(data: data)
    
        
        let imageView = UIImageView(image: smallImage)
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 40.0
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24.0)
        label.textColor = .white
        label.text = "James Wong"
        return label
    }()
    
    var contentOffset: CGFloat = 0 {
        didSet {
            if (contentOffset > 0.0) {
                clipsToBounds = true
            } else {
                clipsToBounds = false
            }
            
        }
    }
    
    // MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(avatarImageView)
        addSubview(nameLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Layout
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        avatarImageView.frame = CGRect(x: 20.0, y: frame.height - 30.0 - 80.0, width: 80.0, height: 80.0)
        nameLabel.frame = CGRect(x: avatarImageView.frame.maxX + 22.0, y: avatarImageView.frame.origin.y, width: frame.width - avatarImageView.frame.maxX - 22.0 * 2.0, height: 33.0)
    }

}
