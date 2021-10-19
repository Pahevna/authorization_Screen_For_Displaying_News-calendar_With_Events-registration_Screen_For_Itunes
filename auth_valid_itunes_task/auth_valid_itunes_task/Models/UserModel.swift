//
//  UserModel.swift
//  auth_valid_itunes_task
//
//  Created by mac on 19.10.2021.
//

import Foundation

struct User: Codable {
    let firstName: String
    let secondName: String
    let phone: String
    let email: String
    let password: String
    let age: Date 
}
