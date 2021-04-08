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
      //  print("checking Header init");
    }
}

extension Header : ListDiffable {
    func diffIdentifier() -> NSObjectProtocol {
       // print("checking Header Model diff identifier");
        return categoryName as NSObjectProtocol
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
       // print("checking Header Model isEqual");
//        if let object = object as? Header {
//            return categoryName == object.categoryName
//        }
        //return false
        return true;
    }
    
    
}
