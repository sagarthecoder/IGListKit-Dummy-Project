//
//  ViewController.swift
//  Practice-IGL
//
//  Created by Bitmorpher on 3/15/21.
//

import UIKit
import IGListKit

class ViewController: UIViewController {
   
    let loader = AddingModelsData()
    let collectionView: UICollectionView = {
        let layout : UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.backgroundColor = .white
      return view
    }()
    lazy var adapter : ListAdapter = {
        return ListAdapter(updater: ListAdapterUpdater(), viewController: self, workingRangeSize: 0)
    }()
    lazy var adapter2 : ListAdapter = {
        return ListAdapter(updater: ListAdapterUpdater(), viewController: self, workingRangeSize: 0)
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        loader.setItemsToUser()
        loader.setItemsToOffice()
        view.addSubview(collectionView)
//        self.collectionView.register(UINib(nibName: "UserCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "user")
        adapter.collectionView = collectionView
        adapter.dataSource = self
        print("Hey")
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [self] in
            // your code here
            self.loader.headerList.swapAt(0, 2)
            //self.loader.userList.insert(User(id: 6, name: "Kamal", imageName: "10"), at: 2)
            adapter.performUpdates(animated: true)
        }
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
      super.viewDidLayoutSubviews()
      collectionView.frame = view.bounds
    }


}
extension ViewController : ListAdapterDataSource {
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
       // let items :  [ListDiffable] = loader.userList
        //print("all = \(items.count)")
       // items += loader.officeList
       // items! += loader.officeList
        //return [" loader.officeList","asas"] as [ListDiffable]
        let items : [ListDiffable] = loader.headerList
        print("count = \(items.count)")
        return items
        
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
//        if object is User {
//            return UserSectionController()
//        }
//        else {
//            return OfficeSectionController()
//        }
        //return UserSectionController()
        return RootSectionController()
        
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil;
    }
    
    
}

