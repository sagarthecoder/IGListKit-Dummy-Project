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
//        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in
//            // your code here
//            self.loader.userList.swapAt(0, 2)
//            //self.loader.userList.insert(User(id: 6, name: "Kamal", imageName: "10"), at: 2)
//            adapter.performUpdates(animated: true)
//        }
       // userList = loader.userList
    }

}

extension RootSectionController {
    override func numberOfItems() -> Int {
        return 1
    }
    override func sizeForItem(at index: Int) -> CGSize {
        return CGSize(width: (collectionContext?.containerSize.width)!, height: 160)
    }
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        print("index no = \(index)")
        let cell : RootCollectionViewCell = (collectionContext?.dequeueReusableCell(withNibName: "RootCollectionViewCell", bundle: nil, for: self, at: index)) as! RootCollectionViewCell
        cell.categoryName.text = header.categoryName
        if(header.categoryName == "ABC") {
            cell.collectionView.tag = -100;
        }
        adapter.collectionView = cell.collectionView
        
//        adapter.dataSource = UserListViewController()
        return cell
        
    }
    override func didUpdate(to object: Any) {
        header = object as? Header
    }
}

extension RootSectionController : ListAdapterDataSource {
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        var items : [ListDiffable] = loader.userList
//        if(adapter.collectionView?.tag == -100) {
//            items = loader.newUserList;
//        }
        print("itemsRoot = \(items.count)")
        return items
        
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        print("go userSection")
        return UserSectionController()
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
}


