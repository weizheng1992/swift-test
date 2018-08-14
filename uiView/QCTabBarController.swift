//
//  QCTabBarController.swift
//  uiView
//
//  Created by yy on 2018/8/6.
//  Copyright © 2018年 J&K. All rights reserved.
//

import UIKit

class QCTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let homeVC = HomeController()
        self.addChildViewController(childerVC:homeVC,title:"首页",normalImg:"home_tabbar_32x32_.imageset",selectedImg:"home_tabbar_press_32x32_.imageset")
        
    }
    func addChildViewController(childerVC:UIViewController,title:NSString ,normalImg:NSString,selectedImg:NSString) {
        self.tabBarItem.title = title as String
               let color = UIColor.blue
        self.tabBar.tintColor = color
        childerVC.title = title as String
        
        var norImg = UIImage(named: normalImg as String)
        norImg = norImg?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        
        var selImg = UIImage(named: selectedImg as String)
        selImg = selImg?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        
        let tabItem = UITabBarItem(title: title as String, image: norImg, selectedImage: selImg)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
