//
//  ViewController.swift
//  HW1
//
//  Created by Нурлан on 3/4/23.
//

import UIKit
import SnapKit
import Kingfisher

class ViewController: UIViewController {
    
    var detail: [Details] = [Details(name: "Rocket Lab reveals big supplier deal with mystery mega constel...", descript: "Rocket Lab has scored a new deal with an unnamed mega constellation customer for reaction wheels, a key spacecraft component.", image: "Image" ),
                            
        Details(name: "6 River Systems co-founder on the state of warehouse robots", descript: "6 River Systems cofounder on the state of warehouse robots. Now a VP of Shopify Logisitcs, Jerome Dubois discusses the company.", image: "Image 1"),
                           
        Details(name: "Fortra told breached companies their data was safe", descript: "Some Fortra customers only learned that their data was stolen after receiving a ransom demand, despite assurances that their data was safe.", image: "Image 2")]
 
    @IBOutlet weak var TV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTV()
    }
    private func configureTV() {
        TV.dataSource = self
        TV.delegate = self
        TV.register(UINib(nibName: TableViewCell.id, bundle: nil), forCellReuseIdentifier: TableViewCell.id)
    }


}

extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return detail.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:TableViewCell.id, for: indexPath) as! TableViewCell
        let model = detail[indexPath.row]
        cell.display(item: model)
        return cell
     }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "second") as! SecondViewController
        secondVC.name = detail[indexPath.row].name
        secondVC.info = detail[indexPath.row].descript
        secondVC.image = detail[indexPath.row].image
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
}
