//
//  CurrencyModel.swift
//  KurCepMobile
//
//  Created by Apple Egitim on 28.08.2024.
//

import Foundation
import UIKit

struct Currency  {
    var changeRate: Double
    var price: Double
    let currencyIcon: UIImage
    let currencyName: String
}

var currencyList = [
    Currency(changeRate: 0.13, price: 34.00, currencyIcon: UIImage(named: "shiba-inu")!, currencyName: "SHIB"),
    Currency(changeRate: 1.0, price: 34.0, currencyIcon: UIImage(named: "shiba-inu")!, currencyName: "SHIB"),
    Currency(changeRate: 1.0, price: 34.0, currencyIcon: UIImage(named: "shiba-inu")!, currencyName: "SHIB"),
    Currency(changeRate: 1.0, price: 34.0, currencyIcon: UIImage(named: "shiba-inu")!, currencyName: "SHIB"),
    Currency(changeRate: 1.0, price: 34.0, currencyIcon: UIImage(named: "shiba-inu")!, currencyName: "SHIB"),
    Currency(changeRate: 1.0, price: 34.0, currencyIcon: UIImage(named: "shiba-inu")!, currencyName: "SHIB"),
    Currency(changeRate: 1.0, price: 34.0, currencyIcon: UIImage(named: "shiba-inu")!, currencyName: "SHIB"),
    Currency(changeRate: 1.0, price: 34.0, currencyIcon: UIImage(named: "shiba-inu")!, currencyName: "SHIB"),
    Currency(changeRate: 1.0, price: 34.0, currencyIcon: UIImage(named: "shiba-inu")!, currencyName: "SHIB"),
    Currency(changeRate: 1.0, price: 34.0, currencyIcon: UIImage(named: "shiba-inu")!, currencyName: "SHIB")
]
