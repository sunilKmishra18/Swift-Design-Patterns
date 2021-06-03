//
//  Models.swift
//  MVVMDemo
//
//  Created by Sunil Mishra on 02/06/21.
//

import Foundation

enum Gender {
    case male, female, unspecified
}

struct Person{
    let name: String
    let middleName:String?
    let birthDate:Date?
    let gender : Gender
    let address : String?
    
    var userName = "UserName"
    
    init(name: String,
         middleName:String?=nil,
         birthDate:Date?=nil,
         gender : Gender = .unspecified,
         address : String?=nil) {
        
        self.name = name
        self.middleName = middleName
        self.birthDate = birthDate
        self.gender = gender
        self.address = address
        
    }
}
