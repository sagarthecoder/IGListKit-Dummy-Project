//
//  ViewController.swift
//  Practice-IGL
//
//  Created by Bitmorpher on 3/15/21.
//

import UIKit
import IGListKit

class ViewController: UIViewController {
   
    @IBOutlet weak var collectionView: UICollectionView!
    let loader = AddingModelsData()
    lazy var adapter : ListAdapter = {
        return ListAdapter(updater: ListAdapterUpdater(), viewController: self, workingRangeSize: 0)
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        loader.setItemsToUser()
        view.addSubview(collectionView)
        
        adapter.collectionView = collectionView
        adapter.dataSource = self

    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
    }

}
extension ViewController : ListAdapterDataSource {
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        let items : [ListDiffable] = loader.headerList
        return items
        
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        return RootSectionController()
        
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil;
    }
}


