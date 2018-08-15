//
//  XZCircleView.swift
//  uiView
//
//  Created by yy on 2018/8/15.
//  Copyright © 2018年 J&K. All rights reserved.
//

import UIKit

class XZCircleView: UIView {

    let backGroundLayer = CAShapeLayer.init()///背景白色细曲线
    
    let progressLayer = CAShapeLayer.init()///进度真是数值曲线
    
    var endVale = 0.00
    
    var progressColor = UIColor.blue.cgColor
    
    var backColor = UIColor.white.cgColor
    
    
    
    
    
    // Only override draw() if you perform custom drawing.
    
    // An empty implementation adversely affects performance during animation.
    
    override func draw(_ rect: CGRect) {
        
        // Drawing code
        
        self.initTheView(rect)
        
    }
    
    
    
    func initTheView(_ rect : CGRect) {
        
        
        
        // 设置百分比动画显示
        
        //设置白色背景线
        
        self.backGroundLayer.frame = rect
        
        
        
        self.backGroundLayer.fillColor = UIColor.clear.cgColor
        
        self.backGroundLayer.lineWidth = 10
        
        let backPath = UIBezierPath.init(arcCenter: CGPoint.init(x: self.frame.size.width/2, y: self.frame.size.width/2), radius: self.frame.size.width / 2.00, startAngle: 0.0, endAngle: CGFloat(M_PI*2), clockwise: true)
        
        
        
        self.backGroundLayer.path = backPath.cgPath
        
        self.backGroundLayer.strokeStart = 0
        
        self.backGroundLayer.strokeEnd = 1
        
        self.backGroundLayer.strokeColor = backColor
    
        
//        self.backGroundLayer.frame = CGRect(x: 0, y: 100, width: self.frame.size.width, height: self.frame.size.height)
        self.layer.addSublayer(self.backGroundLayer)
        
        
        
        
        
        self.backGroundLayer.fillColor = UIColor.clear.cgColor
        
        self.backGroundLayer.lineWidth = 10
        
        
        
        
        
        //设置真实进度曲线
        
        self.progressLayer.frame = rect
        self.progressLayer.fillColor = UIColor.clear.cgColor
        self.progressLayer.lineWidth = 12
        self.progressLayer.lineCap = kCALineCapRound
        
        
        
        let progressPath = UIBezierPath.init(arcCenter: CGPoint.init(x: self.frame.size.width/2, y: self.frame.size.width/2), radius: self.frame.size.width / 2.00, startAngle: 0.0, endAngle: CGFloat(M_PI*2), clockwise: true)
        
        self.progressLayer.path = progressPath.cgPath
        
        self.progressLayer.strokeStart = 0
        
        self.progressLayer.strokeEnd = 0.5
        
        self.progressLayer.strokeColor = progressColor
        
        self.layer.addSublayer(self.progressLayer)
        
        //添加动画
        
        let pathAnimation = CABasicAnimation.init(keyPath: "strokeEnd")
        
        pathAnimation.duration = 1
        
        pathAnimation.fromValue = 0
        
        pathAnimation.toValue = 0.5
        
        pathAnimation.timingFunction = CAMediaTimingFunction.init(name: kCAMediaTimingFunctionEaseOut)
        
        self.progressLayer.add(pathAnimation, forKey: "strokeEnd")
        
    }

}
