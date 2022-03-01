//
//  WalletCoinCollectionViewCell.swift
//  AlphaWallet
//
//  Created by Mac on 28/02/2022.
//

import UIKit

class WalletCoinCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var balance: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
