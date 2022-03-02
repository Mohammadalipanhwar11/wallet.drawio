//
//  LandingVC.swift
//  AlphaWallet
//
//  Created by Mac on 02/03/2022.
//

import UIKit

class LandingVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func catButton(_ sender: Any) {
    }
    
    @IBAction func walletButton(_ sender: Any) {
        let story = UIStoryboard(name: "Wallet", bundle: nil)
        let con = story.instantiateViewController(withIdentifier: "WalletVC") as! WalletVC
        con.modalPresentationStyle = .fullScreen
        self.present(con, animated: true, completion: nil)
    }
    @IBAction func userButton(_ sender: Any) {
    }
    
}
