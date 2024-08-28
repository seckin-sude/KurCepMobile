//
//  ViewController.swift
//  KurCepMobile
//
//  Created by Apple Egitim on 28.08.2024.
//

import Foundation
import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{


    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource=self
        tableView.delegate=self
        // Do any additional setup after loading the view.
        print("HomeViewController")
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
    
        cell.imageView?.image = currencyList[indexPath.row].currencyIcon
        cell.fromLabel.text = currencyList[indexPath.row].currencyName
        cell.toLabel.text = "TRY"
        cell.chageRateLabel.text = String(currencyList[indexPath.row].changeRate) + "%"
        cell.priceLabel.text = String(currencyList[indexPath.row].price)
        
        // ContentView'ün köşe özelliklerini ve border'ı ayarla
        cell.contentView.layer.cornerRadius = 10
        cell.contentView.layer.masksToBounds = true
        cell.contentView.layer.borderWidth = 1
        cell.contentView.layer.borderColor = UIColor.lightGray.cgColor
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currencyList.count
    }

}

