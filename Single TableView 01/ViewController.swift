//
//  ViewController.swift
//  Single TableView 01
//
//  Created by D7703_13 on 2019. 5. 8..
//  Copyright © 2019년 Personal Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var myTableView: UITableView!
    var animals = ["Cat", "Horse", "Pig", "Whale", "Bird"]
    var year = ["3", "2", "5", "6", "2"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        myTableView.delegate = self
        
        self.title = "animal Farm"
        // Do any additional setup after loading the view, typically from a nib.
    
    
    }
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let myRow = indexPath.row
        let mySection = indexPath.section
        myCell.textLabel?.text = animals[myRow]
        //myCell.detailTextLabel?.text = year[myRow]
        myCell.detailTextLabel?.text = "section \(mySection) row = \(myRow)"
        
        myCell.imageView?.image = UIImage(named: animals[myRow])
        
        return myCell
        
    }
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    public func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?{
        if section == 0 {
            return "section header\(section)"
        }
        else {
            return "section header\(section)"
        }
    }
    public func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String?
    {
        if section == 0 {
            return "section footer\(section)"
        }
        else {
            return "section footerer\(section)"
        }
    }
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
}

