//
//  MainVC.swift
//  Take_Phonto
//
//  Created by Apple on 2017/12/6.
//  Copyright © 2017年 lkb. All rights reserved.
//

import UIKit



class MainVC: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
  
    var tableView : UITableView?
    
    let cellReuse = "cellReuse"
    
    
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Config()
        
        CreatUI()
        
        Layout()
        
        
        
        
        
        
        
    }
    
    
    func Config() -> Void {
        
        
        
        
    }

    
    func CreatUI() -> Void {
        

        self.tableView = UITableView()
        
        tableView?.register(UINib(nibName: "MainCell", bundle: nil), forCellReuseIdentifier: cellReuse)
        
        tableView?.rowHeight = UITableViewAutomaticDimension
        tableView?.estimatedRowHeight = 40
        tableView?.delegate = self
        tableView?.dataSource = self
        
        
        
        self.view.addSubview(tableView!)
        
        
        tableView?.mas_makeConstraints({ (make) in
            
  
            
            
            make?.edges.equalTo()(0)
            
            
            
            
            
        })
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    func Layout() -> Void {
        
        
        
        
        
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return UITableViewAutomaticDimension
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: cellReuse)
        
        
        
        
        
        
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("点击了\(indexPath)")
    }
    



}