//
//  HomeSecViewController.swift
//  uiView
//
//  Created by yy on 2018/8/15.
//  Copyright © 2018年 J&K. All rights reserved.
//

import UIKit

class HomeSecViewController: UIViewController {

    private lazy var headerButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "Today-IM"), for: .normal)
        button.backgroundColor = UIColor.black
        button.setTitle("历史记录", for: .normal)
        //        button.addTarget(self, action: #selector(imButtonTapped(_:)), for: .touchUpInside)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tabBarController?.tabBar.isHidden = true
        view.backgroundColor = UIColor.white
        configureNavigationBar()
        creatCire()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func creatCire(){
          let circleView = XZCircleView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        view.addSubview(circleView)
    }
    
    // MARK: Configuration
    
    private func configureNavigationBar() {
        navigationController?.navigationBar.isTranslucent = false
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: headerButton)
        
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
