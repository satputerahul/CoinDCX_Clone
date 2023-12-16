//
//  NavViewController.swift
//  CoinDCX_Clone
//
//  Created by DevMAC01 on 15/12/23.
//

import UIKit

class MarketTableViewCell:  UITableViewCell
{
    @IBOutlet var mar_img: UIImageView!
    @IBOutlet var mar_cryname: UILabel!
    @IBOutlet var mar_cryshrname: UILabel!
    @IBOutlet var mar_cryprice: UILabel!
    @IBOutlet var mar_cryperct: UILabel!
    
}

class NavViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var crypto_img = [UIImage(named: "BNB"), UIImage(named: "LTC"), UIImage(named: "YFI")]
    var crypto_fullname = ["Binance", "Litecoin", "Yearn"]
    var crypto_shortname = ["BNB", "LTC", "YFI"]
    var crypto_price = ["21,898.98", "6,351.00", "7,62,252.00"]
    var crypto_pernt = ["-1.51%", "+0.59%", "+1.53%"]
    
    @IBOutlet var segmentControll: UISegmentedControl!
    
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        crypto_fullname.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MarketCell", for: indexPath) as! MarketTableViewCell
        
        cell.mar_img.image = crypto_img[indexPath.row]
        cell.mar_cryname.text = crypto_fullname[indexPath.row]
        cell.mar_cryshrname.text = crypto_shortname[indexPath.row]
        cell.mar_cryprice.text = crypto_price[indexPath.row]
        cell.mar_cryperct.text = crypto_pernt[indexPath.row]
        
        let perct = crypto_pernt[indexPath.row].dropLast()
        print("perct: ",perct)
        cell.mar_cryperct.text = crypto_pernt[indexPath.row]
        
        if Double(perct)! >= 0.0 {
            cell.mar_cryperct.textColor = .green
        }
        else
        {
            cell.mar_cryperct.textColor = .red
        }
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        segmentControll.setTitleTextAttributes([.foregroundColor: UIColor.blue], for: .selected)
    }
    

}
