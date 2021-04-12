//
//  RootSectionController.swift
//  Practice-IGL
//
//  Created by Bitmorpher on 3/16/21.
//

import UIKit
import  IGListKit

class RootSectionController: ListSectionController{
    
    var header : Header!
    var loader = AddingModelsData()
    lazy var adapter: ListAdapter = {
          let adapter = ListAdapter(updater: ListAdapterUpdater(),
                                    viewController: self.viewController)
          adapter.dataSource = self
          return adapter
      }()
    override init() {
        super.init()
        inset = UIEdgeInsets(top: 0, left: 0, bottom: 8, right: 0)
        loader.setItemsToUser()
    }
}

extension RootSectionController {
    override func numberOfItems() -> Int {
        return 1
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        guard let width = collectionContext?.containerSize.width else { return .zero }
        return CGSize(width: width, height: 160)
    }
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        let cell : RootCollectionViewCell = (collectionContext?.dequeueReusableCell(withNibName: "RootCollectionViewCell", bundle: nil, for: self, at: index)) as! RootCollectionViewCell
        
        cell.categoryName.text = header.categoryName
        adapter.collectionView = cell.collectionView
        return cell
        
    }
    override func didUpdate(to object: Any) {
        header = object as? Header
    }
}

extension RootSectionController : ListAdapterDataSource {
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        let items : [ListDiffable] = loader.userList
        return items
        
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        return UserSectionController()
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
}


