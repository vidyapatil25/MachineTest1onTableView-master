//
//  NextViewController.swift
//  MachineTest1onTableView
//
//  Created by Felix-ITS016 on 25/11/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit

class NextViewController: UIViewController,UITableViewDataSource {
    
    @IBOutlet weak var TableView2: UITableView!
    
    var name = String()
    var selected1 = [String]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selected1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = selected1[indexPath.row]
        return cell
    }
    

    override func viewDidLoad()
    {
        //print("inNext-\(selected1)")
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
