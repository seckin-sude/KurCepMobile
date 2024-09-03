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
        
        let parameters = ["access_key":"72d59945bb65435422e445835130ae35"]
        var urlComponents = URLComponents(string: "https://data.fixer.io/api/latest")!
        
        urlComponents.queryItems = parameters.map {
            
            URLQueryItem(name: $0.key, value: $0.value)
        }
            
            guard let url = urlComponents.url else  {
                print("invalid url")
                return
            }
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            
            let task = URLSession.shared.dataTask(with: request)  {  data,response,error in
                if let error = error  {
                    print("Error: \(error)")
                    return
                }
                guard let httpResponse = response as? HTTPURLResponse,
                        httpResponse.statusCode == 200 else  {
                        print ("Invalid response status code not 200")
                    return
                }
                if let data = data  {
                    if let dataString = String(data: data, encoding: .utf8)  {
                        print ("Data is in string:  \(dataString)")
                    }
                    do{
                        let jsonDecoder = JSONDecoder()
                        let response: Response = try jsonDecoder.decode(Response.self, from: data)
                        print("IS RESPONSE SUCCESS?" + String(response.success))
                    } catch let errorInparsing {
                        print("Error IN parsing." + errorInparsing.localizedDescription)
                        
                    }
                    
                }

            }
        task.resume()
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
    
        cell.imageView?.image = currencyList[indexPath.row].currencyIcon
        cell.fromLabel.text = currencyList[indexPath.row].currencyName
        cell.toLabel.text = "TRY"
        cell.chageRateLabel.text = String(currencyList[indexPath.row].changeRate) + "%"
        cell.priceLabel.text = "₺" + String(currencyList[indexPath.row].price)
        
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
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 66
    }
    
}

