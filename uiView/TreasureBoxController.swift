//
//  TreasureBoxController.swift
//  uiView
//
//  Created by yy on 2018/8/6.
//  Copyright © 2018年 J&K. All rights reserved.
//

import UIKit

class TreasureBoxController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "嘉年华"
        
        let label = UILabel(frame: CGRect(x:0,y:200,width: UIScreen.main.bounds.width,height:50))
        label.backgroundColor = UIColor.green
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.center
        label.text = "嘉年华"
        // Do any additional setup after loading the view.
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
