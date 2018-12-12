//
//  PlannerHomeViewController + TableViewDelegate.swift
//  Planner
//
//  Created by Fabrice Appolinary on 2018-12-11.
//  Copyright © 2018 Fabrice Appolinary. All rights reserved.
//

import Foundation
import UIKit

extension PlannerHomeViewController : UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PlannerHomeTableViewCell
        cell.textLabel?.text =  "Testing 123"
        return cell
    }
}

extension PlannerHomeViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "Testing footer"
    }
}
