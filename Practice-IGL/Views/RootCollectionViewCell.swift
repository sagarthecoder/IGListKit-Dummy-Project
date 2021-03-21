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

    //let col = ListCollectionView()
    @IBAction func seeALLButton(_ sender: UIButton) {
    }
    
    @IBOutlet weak var categoryName: UILabel!
    let loader = AddingModelsData()
    override func awakeFromNib() {
        super.awakeFromNib()
        print("from rootcollectioncell")
        
        //adapter.dataSource = UserListViewController()
        
        
        // Initialization code
    }

}

//extension RootCollectionViewCell : ListAdapterDataSource {
//    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
//        let object : [ListDiffable] = loader.userList
//
//        return object
//    }
//
//    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
//        return UserSectionController()
//    }
//
//    func emptyView(for listAdapter: ListAdapter) -> UIView? {
//        return nil
//    }
//
//
//}
