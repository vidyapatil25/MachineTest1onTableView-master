//
//  ViewController.swift
//  MachineTest1onTableView
//
//  Created by Felix-ITS016 on 25/11/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
  
    @IBOutlet weak var GameNameText: UITextField!
    @IBAction func NextButton(_ sender: UIButton)
    {
        let next = storyboard?.instantiateViewController(withIdentifier: "NextViewController")as! NextViewController
        next.selected1 = selected
       navigationController?.pushViewController(next, animated:true )
    }
    
    @IBOutlet weak var GameLabel: UILabel!
    @IBAction func AlertButton(_ sender: UIButton)
        {
            let  cell = TableView.dequeueReusableCell(withIdentifier: "cell")
            
    }
        
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Gamearray.count
    }
     var selected = [String]()
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
       /* {
         let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
         cell.textLabel?.text = Gamearray[indexPath.row]
         return cell
         
         }*/
    {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
       // cell.accessoryType = .detailDisclosureButton
        
        cell.accessoryType = .none
        cell.textLabel?.text = Gamearray[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        print(cell!.textLabel!.text!)
        
        
        let alert = UIAlertController(title: "You select game:", message:cell!.textLabel!.text! , preferredStyle: .alert)
        let okAction = UIAlertAction(title: "ok" , style: .default){(okAction)in
            print("This is outdoorgame")
            //print("//GameArray is printed!!")
        }
        let cancleAction = UIAlertAction(title: "cancle", style: .cancel ){(cancleAction)in
           // print("This is not outdoorGame")
        }
        alert.addAction(okAction)
        alert.addAction(cancleAction)
        present(alert,animated: true,completion: nil)
    }
    
   
    
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        print(cell!.textLabel!.text!)
        let next = storyboard?.instantiateViewController(withIdentifier: "NextViewController")as! NextViewController
        //next.name = nameArray
        navigationController?.pushViewController(next, animated:true )
        
    }
  //  var selected = [String]()
    
    @IBOutlet weak var TableView: UITableView!
    let Gamearray = ["Badminton","Tennis","Basketball","Kho Kho","Kabaddi","Vollyball"]
    
    
    
    override func viewDidLoad()
    {
        //print("inNext-\(selected)")
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }






}
