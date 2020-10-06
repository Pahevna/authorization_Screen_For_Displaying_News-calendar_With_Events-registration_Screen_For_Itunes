//
//  Person.swift
//  MVP
//
//  Created by mac on 30.09.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import Foundation

struct Comment: Decodable {
    var postID: Int
    var id: Int
    var name: String
    var email: String
    var body: String

private enum CodingKeys: String, CodingKey {
    case postID = "postId", id, name, email, body

    }
}
