//
//  User.swift
//  Practice-IGL
//
//  Created by Bitmorpher on 3/15/21.
//

import UIKit
import IGListKit

class User: NSObject {
    let id : Int
    let name: String
    let imageName : String
    init(id : Int, name : String, imageName : String) {
        self.id = id
        self.name = name
        self.imageName = imageName
    }
}

extension User: ListDiffable {

    func diffIdentifier() -> NSObjectProtocol {
        return id as NSObjectProtocol
    }

    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        if let object = object as? User {
              return id == object.id
            }
            return false
    }

}
