//
//  MineViewController.swift
//  uiView
//
//  Created by yy on 2018/8/14.
//  Copyright © 2018年 J&K. All rights reserved.
//

import UIKit

class MineViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var dataArr:Array<Mine>?

    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 0 , width: view.bounds.width ,height: view.bounds.height))
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

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        
        navigationController!.navigationBar.isTranslucent = false
        navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController!.navigationBar.barTintColor = UIColor(red: 17 / 255.0, green: 182 / 255.0, blue: 162 / 255.0, alpha: 1.0)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: titleLabel)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: setLabel )
        navigationItem.title = nil
        self.view.backgroundColor = UIColor(red: 17 / 255.0, green: 182 / 255.0, blue: 162 / 255.0, alpha: 1.0)
//        scrollView.contentSize = CGSize(width:view.bounds.width,height:view.bounds.height);

        
        
        let goods1 = Mine()
        goods1.name = "西凤酒－华山论剑"
        goods1.desTitle = "西凤酒。"
        goods1.coverIamge = "image"
        
        let goods2 = Mine()
        goods2.name = "西凤酒－华山论剑"
        goods2.coverIamge = "image"
        
        let goods3 = Mine()
        goods3.name = "西凤酒－华山论剑"
        goods3.coverIamge = "image"
        dataArr = [goods1,goods2,goods3]
        
        
        let tableView = UITableView(frame:self.view.bounds,style:.plain)
       
        tableView.tableHeaderView = header
        self.view.addSubview(scrollView)
        scrollView.addSubview(tableView)
        tableView.register(MineViewCell.self, forCellReuseIdentifier: "Identifier")
        tableView.backgroundColor = UIColor(red: 17 / 255.0, green: 182 / 255.0, blue: 162 / 255.0, alpha: 1.0)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

     func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr!.count
        
    }
    
    
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Identifier", for: indexPath) as! MineViewCell
        cell.setValueForCell(model: dataArr![indexPath.row])
        return cell
        
    }
    
    
    
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.00
    }
    


    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
