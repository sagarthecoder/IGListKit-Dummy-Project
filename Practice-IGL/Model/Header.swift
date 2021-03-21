//
//  Header.swift
//  Practice-IGL
//
//  Created by Bitmorpher on 3/16/21.
//

import UIKit
import  IGListKit

class Header: NSObject {
    let categoryName : String
    init(categotyName:String) {
        self.categoryName = categotyName
    }
}

extension Header : ListDiffable {
    func diffIdentifier() -> NSObjectProtocol {
        return categoryName as NSObjectProtocol
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        if let object = object as? Header {
            return categoryName == object.categoryName
        }
        return false
    }
    
    
}
