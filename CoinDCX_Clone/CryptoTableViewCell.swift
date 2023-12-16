//
//  CryptoTableViewCell.swift
//  CoinDCX_Clone
//
//  Created by DevMAC01 on 14/12/23.
//

import UIKit

class CryptoTableViewCell: UITableViewCell {
    
    @IBOutlet var cryptoImg: UIImageView!
    @IBOutlet var cryptoLbl: UILabel!
    @IBOutlet var cryptoLblShort: UILabel!
    @IBOutlet var cryptoPrice: UILabel!
    @IBOutlet var cryptoPer: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
