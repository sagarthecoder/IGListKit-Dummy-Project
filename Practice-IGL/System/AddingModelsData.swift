//
//  AddingModelsData.swift
//  Practice-IGL
//
//  Created by Bitmorpher on 3/15/21.
//

import UIKit

class AddingModelsData: NSObject {
    var userList : [User] = []
    var newUserList : [User] = []
    var officeList : [Office] = []
    var headerList : [Header] = []
    func setItemsToUser()
    {
        let entries = [
            User(id: 1, name: "Sagar",imageName : "1.jpeg"),
            User(id: 2, name: "Ashik", imageName: "2.jpeg"),
            User(id: 3, name: "Siam", imageName: "3.jpeg"),
            User(id: 4, name: "Sagar1", imageName: "4.jpeg"),
            User(id: 5, name: "Ashik2", imageName: "5.jpeg"),
//            User(id: 6, name: "Siam3"),
//            User(id: 7, name: "Sagar4"),
//            User(id: 8, name: "Ashik5"),
//            User(id: 9, name: "Siam6"),
//            User(id: 10, name: "Sagar7"),
//            User(id: 11, name: "Ashik8"),
//            User(id: 12, name: "Siam9"),
//
//            User(id: 13, name: "Sagar12"),
//            User(id: 14, name: "Ashik13"),
//            User(id: 15, name: "Siam13"),
//            User(id: 16, name: "Sagar14"),
//            User(id: 17, name: "Ashik24"),
//            User(id: 18, name: "Siam31"),
//            User(id: 19, name: "Sagar43"),
//            User(id: 20, name: "Ashik54"),
//            User(id: 21, name: "Siam62"),
//            User(id: 22, name: "Sagar74"),
//            User(id: 23, name: "Ashik823"),
//            User(id: 24, name: "Siam911")
        ]
        self.userList = entries
        
        self.newUserList = [
            User(id: 1, name: "Sagarrrrrrrrr", imageName: "1.jpeg"),
            User(id: 22, name: "Ashikkkkkkk", imageName: "6.jpeg"),
            User(id: 32, name: "Siammmmm", imageName: "7.jpeg"),
            User(id: 42, name: "Sagar1", imageName: "8.jpeg"),
            User(id: 52, name: "Ashik2", imageName: "9.jpeg"),
//            User(id: 62, name: "Siam3"),
//            User(id: 72, name: "Sagar4"),
//            User(id: 8, name: "Ashik5"),
//            User(id: 9, name: "Siam6"),
//            User(id: 10, name: "Sagar7"),
//            User(id: 11, name: "Ashik8"),
//            User(id: 12, name: "Siam9"),
//
//            User(id: 123, name: "Sagar12"),
//            User(id: 142, name: "Ashik13"),
//            User(id: 15, name: "Siam13"),
//            User(id: 16, name: "Sagar14"),
//            User(id: 17, name: "Ashik24"),
//            User(id: 18, name: "Siam31"),
//            User(id: 19, name: "Sagar43"),
//            User(id: 20, name: "Ashik54"),
//            User(id: 21, name: "Siam62"),
//            User(id: 22, name: "Sagar74"),
//            User(id: 23, name: "Ashik823"),
//            User(id: 24, name: "Siam911")
        ]
        self.headerList = [
            Header(categotyName: "ABC"),
            Header(categotyName: "DEF"),
            Header(categotyName: "GHI"),
            Header(categotyName: "IJK"),
        ]
    }
    
    func setItemsToOffice()
    {
        let entries = [
            Office(id : 201, officeName: "Bitmorpher", location: "Mohammadpur"),
            Office(id : 202, officeName: "Enosis", location: "Gulshan")
        ]
        self.officeList = entries;
    }
    
}
