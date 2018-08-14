//
//  AddressBookViewController.swift
//  uiView
//
//  Created by J&K on 2018/7/31.
//  Copyright © 2018年 J&K. All rights reserved.
//

import UIKit

class AddressBookViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        view.backgroundColor = UIColor.blue
        let label = UILabel(frame: CGRect(x: 0, y: 200, width: UIScreen.main.bounds.width, height: 50))
        label.backgroundColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = UIColor.gray
        label.textAlignment = NSTextAlignment.center
        label.text = "通讯录"
        view.addSubview(label)
        
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
