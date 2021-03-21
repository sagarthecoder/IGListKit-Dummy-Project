//
//  UserListViewController.swift
//  Practice-IGL
//
//  Created by Bitmorpher on 3/16/21.
//

import UIKit
import  IGListKit

class UserListViewController: UIViewController {

    let loader = AddingModelsData()
    override func viewDidLoad() {
        super.viewDidLoad()
        print("who")
        loader.setItemsToUser()
        // Do any additional setup after loading the view.
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension UserListViewController : ListAdapterDataSource {
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        let object : [ListDiffable] = loader.userList
        
        return object
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        return UserSectionController()
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
    
    
}
