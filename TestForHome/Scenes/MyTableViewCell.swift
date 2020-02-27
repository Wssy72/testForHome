//
//  File.swift
//  TestForHome
//
//  Created by Sergey on 02.02.2020.
//  Copyright © 2020 Sergey. All rights reserved.
//

import Foundation
import UIKit

class MyTableViewCell: UITableViewCell {
    
var  numberLabel: UILabel! = UILabel()
    
   required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:)")
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    let gap: CGFloat = 10 
    let labelHeight: CGFloat = 20
    let labelWidth: CGFloat = 80
        
    numberLabel = UILabel(frame: .init(x: gap, y: gap, width: labelWidth, height: labelHeight))
    contentView.addSubview(numberLabel)
    }
}
