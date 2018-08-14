//
//  MineViewController.swift
//  uiView
//
//  Created by J&K on 2018/7/31.
//  Copyright © 2018年 J&K. All rights reserved.
//

import UIKit

class MineViewController: UIViewController {

    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: navigationController!.navigationBar.frame.height , width: view.frame.width, height: view.frame.height-navigationController!.navigationBar.frame.height))
        scrollView.backgroundColor = UIColor.white
         scrollView.isScrollEnabled = true;
        scrollView.bounces = true;
        return scrollView
    }()
    
    private lazy var header: MineHeaderView = {
        let header = MineHeaderView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 130.0))
         header.backgroundColor = UIColor(red: 17 / 255.0, green: 182 / 255.0, blue: 162 / 255.0, alpha: 1.0)
        return header
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100.0, height: 44.0))
        label.font = UIFont.systemFont(ofSize: 24.0)
        label.textColor = .white
        label.text = "我的"
        return label
    }()
    
    private lazy var setLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100.0, height: 44.0))
        label.font = UIFont.systemFont(ofSize: 24.0)
        label.textColor = UIColor.white
        label.text = "设置"
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationController!.navigationBar.isTranslucent = false
        navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController!.navigationBar.barTintColor = UIColor(red: 17 / 255.0, green: 182 / 255.0, blue: 162 / 255.0, alpha: 1.0)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: titleLabel)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: setLabel )
        navigationItem.title = nil
        view.backgroundColor = UIColor(red: 17 / 255.0, green: 182 / 255.0, blue: 162 / 255.0, alpha: 1.0)
//        scrollView.contentSize = CGSize(width:view.bounds.width,height:view.bounds.height);
        view.addSubview(scrollView)
        scrollView.addSubview(header)
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
