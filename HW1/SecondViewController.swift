//
//  SecondViewController.swift
//  HW1
//
//  Created by Нурлан on 3/4/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    

    
    @IBOutlet weak var NextTitleLabel: UILabel!
   
    
    @IBOutlet weak var NextInfoLabel: UILabel!
   
    
    @IBOutlet weak var NextImegeView: UIImageView!
    
    var name = ""
    var info = ""
    var image = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NextTitleLabel.text = name
        NextInfoLabel.text = info
        NextImegeView.image = UIImage(named: image)
        
    }


   
}
