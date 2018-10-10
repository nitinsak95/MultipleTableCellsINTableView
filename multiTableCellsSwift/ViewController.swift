//
//  ViewController.swift
//  multiTableCellsSwift
//
//  Created by AFFIXUS IMAC1 on 9/26/18.
//  Copyright © 2018 AFFIXUS IMAC1. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var arr = ["Type of Content", "Course", "Subject", "Topic", "Sub Topic", "Description"]
    var arrData = ["Type of Content", "Course", "Subject", "Topic", "Sub Topic", "vdvcscvdsxhkbkbahkxvakvxvakhvxkhjxvxxkjghakxvxvkjavbkvbxkjvbkjvbkbjkvbkavbxkjxvbkaxDescription"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.reloadData()
        tableView.estimatedRowHeight = 600
//        tableView.rowHeight = UITableViewAutomaticDimension
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 1
        }else if section == 1{
            return 1
        }else{
            return arr.count
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 228
        }else if indexPath.section == 1{
            return UITableViewAutomaticDimension
        }else{
            return UITableViewAutomaticDimension
        }
    }
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! FirstCell
            cell.img.backgroundColor = .red
            return cell
        }else if indexPath.section == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! SecondCell
            cell.lbName.sizeToFit()
            cell.lbName.numberOfLines = 0
            cell.lbName.text = "HelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHello"
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell3", for: indexPath) as! ThirdCell
            cell.lbStat.text = arr[indexPath.row]
            cell.lbDescc.sizeToFit()
            cell.lbDescc.numberOfLines = 0
            
            if indexPath.row == 0{
                cell.lbDescc.text = "One"
            }else if indexPath.row == 1{
                cell.lbDescc.text = "Two"
            }else if indexPath.row == 2{
                cell.lbDescc.text = "Three"
            }else if indexPath.row == 3{
                cell.lbDescc.text = "Four"
            }else{
                cell.lbDescc.text = "Other"
            }
//            cell.lbDescc.text = arrData[indexPath.row]
            return cell
        }
    }
  

}

