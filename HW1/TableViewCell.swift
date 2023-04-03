//
//  TableViewCell.swift
//  HW1
//
//  Created by Нурлан on 3/4/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    static let id = String(describing: TableViewCell.self)
    
    
    @IBOutlet weak var NameL: UILabel!
    
    @IBOutlet weak var InfoL: UILabel!
    
    @IBOutlet weak var ImageV: UIImageView!
    
    func display(item: Details){
        NameL.text = item.name
        InfoL.text = item.descript
        ImageV.image = UIImage(named: item.image)
    }
}
