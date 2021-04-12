//
//  UserCollectionViewCell.swift
//  Practice-IGL
//
//  Created by Bitmorpher on 3/15/21.
//

import UIKit

class UserCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var id: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.clipsToBounds = false
        self.layer.masksToBounds = false
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        self.imageView.image = nil
    }

}
