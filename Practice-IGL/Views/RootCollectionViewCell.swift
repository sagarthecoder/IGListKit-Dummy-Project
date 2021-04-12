//
//  RootCollectionViewCell.swift
//  Practice-IGL
//
//  Created by Bitmorpher on 3/16/21.
//

import UIKit
import IGListKit

class RootCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBAction func seeALLButton(_ sender: UIButton) {
        print("clicked seeAll Button Action")
    }
    
    @IBOutlet weak var categoryName: UILabel!
    let loader = AddingModelsData()
    
    override func prepareForReuse() {
        super.prepareForReuse()
        collectionView.setContentOffset(.zero, animated: false)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.clipsToBounds = false
        self.layer.masksToBounds = false
        self.collectionView.clipsToBounds = false
        self.collectionView.layer.masksToBounds = false
        
    }
    
}
