//
//  MyTableViewCell.swift
//  KurCepMobile
//
//  Created by Apple Egitim on 28.08.2024.
//

import Foundation
import UIKit

class MyTableViewCell:UITableViewCell  {
    
    
    @IBOutlet weak var currencyIcon: UIImageView!
    
    @IBOutlet weak var chageRateLabel: UILabel!
    @IBOutlet weak var toLabel: UILabel!
    @IBOutlet weak var fromLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let margins = UIEdgeInsets(top: 0, left: 5, bottom: 10, right: 5)
        contentView.frame = contentView.frame.inset(by: margins)
        
    }
}
