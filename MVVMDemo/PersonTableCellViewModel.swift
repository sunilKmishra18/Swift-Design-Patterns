//
//  PersonTableCellViewModel.swift
//  MVVMDemo
//
//  Created by Sunil Mishra on 02/06/21.
//

import UIKit

struct PersonTableCellViewModel {
    let name: String
    let userName: String
    var currentlyFollowing: Bool
    let image: UIImage?
    
    init(with model: Person) {
        name = model.name
        userName=model.userName
        currentlyFollowing=false
        image = UIImage(systemName: "person")
    }
}
