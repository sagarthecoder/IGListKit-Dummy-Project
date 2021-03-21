//
//  Office.swift
//  Practice-IGL
//
//  Created by Bitmorpher on 3/15/21.
//

import UIKit
import IGListKit

class Office: NSObject {
    let id : Int
    let  officeName : String
    let location : String
    init(id : Int, officeName : String, location : String) {
        self.id = id
        self.officeName = officeName
        self.location = location
    }
}

extension Office: ListDiffable {

    func diffIdentifier() -> NSObjectProtocol {
        return id as NSObjectProtocol
    }

    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        if let object = object as? Office {
              return id == object.id
            }
            return false
    }

}
