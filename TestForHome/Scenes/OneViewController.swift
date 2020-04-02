//
//  TwoControllers.swift
//  TestForHome
//
//  Created by Sergey on 28.01.2020.
//  Copyright © 2020 Sergey. All rights reserved.
//

import Foundation
import UIKit

class OneViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let dataArray: Array<Int> = Array(1...100)
    let registerCell = "registerCells"
    var myTableView: UITableView! = UITableView()  // почему опционально не дает
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
    //let displayWidth: CGFloat = self.view.frame.width
    //let displayHeight: CGFloat = self.view.frame.height
    //property for table
    myTableView = UITableView.init(frame: view.bounds, style: UITableView.Style.grouped)

    //delete all commentsk
        
    //myTableView.frame = CGRect(x: 0, y: 0, width: displayWidth, height: displayHeight)
    // register standart cell
    //myTableView.register(UITableViewCell.self, forCellReuseIdentifier: registerCell)
    //register customCell
    myTableView.register(MyTableViewCell.self, forCellReuseIdentifier: registerCell)
    //title = "Table"
    view.backgroundColor = UIColor.white
    self.myTableView.dataSource = self
    self.myTableView.delegate = self
    view.addSubview(myTableView)
       }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: registerCell, for: indexPath) as! MyTableViewCell
        
        cell.textLabel?.text = dataArray[indexPath.row].description
        cell.textLabel?.textAlignment = .right
        
        cell.numberLabel.text = "number"
        cell.numberLabel.textAlignment = .center
        
        return cell
    }
    //test git
}
