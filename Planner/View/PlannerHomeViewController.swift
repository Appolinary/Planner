//
//  ViewController.swift
//  Planner
//
//  Created by Fabrice Appolinary on 2018-12-09.
//  Copyright © 2018 Fabrice Appolinary. All rights reserved.
//

import UIKit

class PlannerHomeViewController: UIViewController {
    
    lazy var tableView : UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(PlannerHomeTableViewCell.classForCoder(), forCellReuseIdentifier: "cell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Planner"
        
        self.view.backgroundColor = UIColor.white
        
        self.view.addSubview(tableView)
        
        self.tableView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 5).isActive =  true
        self.tableView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -5).isActive =  true
        self.tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive =  true
        self.tableView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive =  true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
}


