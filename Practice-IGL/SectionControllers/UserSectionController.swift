//
//  UserSectionController.swift
//  Practice-IGL
//
//  Created by Bitmorpher on 3/15/21.
//

import UIKit
import IGListKit

class UserSectionController: ListSectionController {
    var user : User!
    override init() {
        super.init()
   // print("user init")
        inset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 2)
        minimumInteritemSpacing = 4
    }
}

extension UserSectionController  {
    override func numberOfItems() -> Int {
       // print("user numberOf")
        return 1;
    }
    override func sizeForItem(at index: Int) -> CGSize {
       // print("user sizeFor")
        return CGSize(width: 100, height: 100)
    }
    override func cellForItem(at index: Int) -> UICollectionViewCell {
      // print("user cellFor")
        let cell : UserCollectionViewCell =   (collectionContext?.dequeueReusableCell(withNibName: "UserCollectionViewCell", bundle: nil, for: self, at: index)) as! UserCollectionViewCell
       // print("cell no = \(self.section)")
       // cell.name.text = user.name
       // cell.id.text = String(user.id)
       // print("id = \(String(describing: cell.id.text))")
        cell.imageView.image = UIImage(named: user.imageName)
      //  print("user image = \(user.imageName)")
        return cell
    }
    
    
    override func didUpdate(to object: Any) {
        user = object as? User
    }
}
