//
//  WalletVC.swift
//  AlphaWallet
//
//  Created by Mac on 28/02/2022.
//

import UIKit

class WalletVC: UIViewController {

    @IBOutlet weak var collection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collection.register(UINib(nibName: "WalletCoinCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "WalletCoinCollectionViewCell")
        
    }

}

extension WalletVC:UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.collection.dequeueReusableCell(withReuseIdentifier: "WalletCoinCollectionViewCell", for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let flowLayout = collectionViewLayout as! UICollectionViewFlowLayout
        let numberofItem: CGFloat = 3
        let collectionViewWidth = self.collection.bounds.width
        let extraSpace = (numberofItem - 1) * flowLayout.minimumInteritemSpacing
        let inset = flowLayout.sectionInset.right + flowLayout.sectionInset.left
        let width = Int((collectionViewWidth - extraSpace - inset) / numberofItem)
        return CGSize(width: width, height: width)
    }
    
    
}
