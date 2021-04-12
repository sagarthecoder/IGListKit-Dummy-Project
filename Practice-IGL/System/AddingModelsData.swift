//
//  AddingModelsData.swift
//  Practice-IGL
//
//  Created by Bitmorpher on 3/15/21.
//

import UIKit

class AddingModelsData: NSObject {
    var userList : [User] = []
    var headerList : [Header] = []
    func setItemsToUser()
    {
        self.userList = [
            User(id: 1, name: "Sagar",imageName : "1.jpeg"),
            User(id: 2, name: "Ashik", imageName: "2.jpeg"),
        ]
        for  i in 12...1000 {
            self.userList.append(User(id: i, name: "abc"+String(i), imageName: "5.jpeg"))
        }
        
        self.headerList = [
            Header(categotyName: "ABC"),
            Header(categotyName: "DEF"),
            Header(categotyName: "GHI"),
            Header(categotyName: "IJK"),
            
        ]
        for i in 0...1000 {
            self.headerList.append(Header(categotyName: "omg"+String(i)))
        }
    }
    
}
