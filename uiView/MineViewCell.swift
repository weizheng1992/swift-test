//
//  MineViewCell.swift
//  uiView
//
//  Created by yy on 2018/8/14.
//  Copyright © 2018年 J&K. All rights reserved.
//

import UIKit

class MineViewCell: UITableViewCell {

    var titleLab:UILabel?
    var coverImageView:UIImageView?
    var desLab:UILabel?
    

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.lauoutUI()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func lauoutUI()  {
        coverImageView = UIImageView(frame:CGRect(x:10,y:5,width:40,height:30))
        coverImageView?.backgroundColor = UIColor.green
        self.addSubview(coverImageView!)
        
        titleLab = UILabel(frame:CGRect(x:50,y:5,width:self.contentView.bounds.size.width - 130,height:30))
        titleLab?.backgroundColor = UIColor.gray
        self.addSubview(titleLab!)
        
        desLab = UILabel(frame:CGRect(x:self.contentView.bounds.size.width,y:5,width:40,height:30))
        desLab?.backgroundColor = UIColor.blue
        self.addSubview(desLab!)
    }
    
    
    
    func setValueForCell(model:Mine){
        self.titleLab?.text = model.name
        self.desLab?.text = model.desTitle
        self.coverImageView?.image = UIImage(named:model.coverIamge!)
    }
    


}
