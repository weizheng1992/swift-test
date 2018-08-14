//
//  GoodsTableViewCell.swift
//  uiView
//
//  Created by yy on 2018/8/14.
//  Copyright © 2018年 J&K. All rights reserved.
//

import UIKit

class GoodsTableViewCell: UITableViewCell {

    var titleLab:UILabel?
    
    var coverImageView:UIImageView?
    
    var desLab:UILabel?
    
    var priceLab:UILabel?
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
    }
    
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.lauoutUI()
        
        
        
    }
    
    
    
    func lauoutUI()  {
        
        coverImageView = UIImageView(frame:CGRect(x:10,y:5,width:100,height:100))
        
        self.addSubview(coverImageView!)
        
        
        
        titleLab = UILabel(frame:CGRect(x:120,y:5,width:self.contentView.bounds.size.width - 130,height:30))
        
        self.addSubview(titleLab!)
        
        
        
        priceLab = UILabel(frame:CGRect(x:120,y:35,width:self.contentView.bounds.size.width - 130,height:30))
        
        self.addSubview(priceLab!)
        
        
        
        desLab = UILabel(frame:CGRect(x:120,y:65,width:self.contentView.bounds.size.width - 130,height:30))
        
        self.addSubview(desLab!)
        
    }
    
    
    
    func setValueForCell(model:Goods){
        
        self.titleLab?.text = model.name
        
        self.priceLab?.text = model.price
        
        self.desLab?.text = model.desTitle
        
        self.coverImageView?.image = UIImage(named:model.coverIamge!)
        
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
