//
//  ViewController.swift
//  uiView
//
//  Created by J&K on 2018/7/31.
//  Copyright © 2018年 J&K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
//     var dataArr:Array<Goods>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor=UIColor.red
        
        
        
//
//        let goods1 = Goods()
//
//        goods1.name = "西凤酒－华山论剑"
//
//        goods1.price = "300.00"
//
//        goods1.desTitle = "西凤酒是中国四大名酒之一，曾荣获过万国博览会金奖。华山论剑西凤酒，中国峰峻品格的首倡者。"
//
//        goods1.coverIamge = "image"
//
//
//
//        let goods2 = Goods()
//
//        goods2.name = "西凤酒－华山论剑"
//
//        goods2.price = "300.00"
//
//        goods2.desTitle = "西凤酒是中国四大名酒之一，曾荣获过万国博览会金奖。华山论剑西凤酒，中国峰峻品格的首倡者。"
//
//        goods2.coverIamge = "image"
//
//
//
//        let goods3 = Goods()
//
//        goods3.name = "西凤酒－华山论剑"
//
//        goods3.price = "300.00"
//
//        goods3.desTitle = "西凤酒是中国四大名酒之一，曾荣获过万国博览会金奖。华山论剑西凤酒，中国峰峻品格的首倡者。"
//
//        goods3.coverIamge = "image"
//
//
//
//        dataArr = [goods1,goods2,goods3]
//
//
//
//        let tableView = UITableView(frame:self.view.bounds,style:.plain)
//
//        self.view.addSubview(tableView)
//
//        tableView.register(NSClassFromString("GoodsTableViewCell"), forCellReuseIdentifier: "goodsCell")
//
//        tableView.delegate = self
//
//        tableView.dataSource = self
        

        
        
        
        
        
//
//        let button = UIButton(type: .custom)
//
//
//        button.frame = CGRect(x: 0, y: 200, width: UIScreen.main.bounds.width, height: 50)
//        button.backgroundColor=UIColor.white
//        button.setTitle("回到RootViewContrller", for: .normal)
//        button.setTitleColor(UIColor.gray, for: .normal)
//        view.addSubview(button)
//        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
//
        
        
        // Do any additional setup after loading the view, typically from a nib.
//        view.backgroundColor = UIColor.white
//
//        let view_t = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
//        view_t.backgroundColor = UIColor.black
//        view_t.center = view.center
//        view.addSubview(view_t)
//
//        let transform = view_t.transform
//        // 向下平移200像素
////        view_t.transform = transform.translatedBy(x: 0, y: 200)
//        // 缩小一半
//          view_t.transform = transform.scaledBy(x: 0.5, y: 0.5)
//
//
//
//        let v = UIView(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
//        v.backgroundColor = UIColor.black
//
//        v.layer.borderColor = UIColor.red.cgColor
//        v.layer.borderWidth = 2
//        v.layer.shadowColor = UIColor.red.cgColor
//        v.layer.shadowOffset = CGSize(width: 10, height: 10)
//        v.layer.shadowOpacity = 0.45
//        v.layer.shadowRadius = 5.0
//
//
//        v.layer.masksToBounds = true
//        v.layer.cornerRadius = 100
//
//
//
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.frame = v.bounds
//
//        let fromColor = UIColor.green.cgColor
//        let minColor = UIColor.red.cgColor
//        let toColor = UIColor.blue.cgColor
//
//        gradientLayer.colors = [fromColor,minColor,toColor]
//        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
//        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
//        gradientLayer.locations = [0,0.3,1]
//        v.layer.addSublayer(gradientLayer)
//
//
//        view.addSubview(v)
        
        
        
//        let button = UIButton(type: .custom)
//        button.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
//        view.addSubview(button)
//
//        // 设置背景图片
//        button.setBackgroundImage(UIImage(named:""), for: .normal)
//        // 设置背景颜色
//        button.backgroundColor = UIColor.green
//
//        // 设置标题（默认状态下）
//        button.setTitle("this is a button", for: .normal)
//        // 设置标题(高亮状态)
//        button.setTitle("hightlight button", for: .highlighted)
//        // 设置标题字体颜色（默认状态）
//        button.setTitleColor(UIColor.white, for: .normal)
//        // 设置标题字体颜色（高亮状态）
//        button.setTitleColor(UIColor.red, for: .highlighted)
//        // 设置标题文字大小和字体
//        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
//        // 设置图片(默认状态)
//        //button.setImage(UIImage(named:""), for: .normal)
//        // 设置图片（选中状态）
//        //button.setImage(UIImage(named:""), for: .selected)
//        // 设置图片在button中位置
//        //button.imageEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 20, right: 5)
//        // 设置文字在button中位置
//        //button.titleEdgeInsets = UIEdgeInsets(top: 80, left: 5, bottom: 0, right: 5)
//        // 按钮在高亮状态和禁用状态时，在这两个属性都被设置为true的情况下，如果没有设置这两种状态对应的图片，系统会把默认状态的图片变暗一些，用于区分高亮状态和普通状态
//        // button.adjustsImageWhenDisabled = false
//        // button.adjustsImageWhenHighlighted = false
//        //  如果UIButton是custom属性的话，并不会从父类中继承tintColor，tintColor默认是蓝色，UIButton受到tintColor影响的只有title和image，但如果修改了textColor，那么tintColor就不起作用了
//        button.tintColor = UIColor.yellow
//        // 设置方法
//        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
    }
    
//    @objc func buttonClick() {
//        print("This is a button~")
//    }

        

//
//    }
//
//   @objc func buttonClick() {
//        navigationController?.popViewController(animated: true)
//
//        dismiss(animated: true, completion: nil)
//    }
    
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//        return dataArr!.count
//
//    }
//
//
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let cell = GoodsTableViewCell(style:UITableViewCellStyle.default, reuseIdentifier: "goodsCell")
//
//
//
//        cell.setValueForCell(model: dataArr![indexPath.row])
//
//        return cell
//
//    }
//
//
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//
//        return 100.00
//
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

