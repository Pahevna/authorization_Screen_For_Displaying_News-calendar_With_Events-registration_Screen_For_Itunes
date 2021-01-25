//
//  News.swift
//  task3
//
//  Created by mac on 19.01.2021.
//

import Foundation

struct Response: Decodable {
    var results: [News]?
}

struct News: Decodable {
    var sectionName: String?
    var webPublicationDate: String?
    var webTitle: String?
}
