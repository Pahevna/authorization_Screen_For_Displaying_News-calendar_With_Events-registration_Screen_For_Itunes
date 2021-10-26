//
//  AlbumModel.swift
//  auth_valid_itunes_task
//
//  Created by mac on 20.10.2021.
//

import Foundation

struct  AlbumModel: Decodable, Equatable {
    let results: [Album]
}

struct Album: Decodable, Equatable {
    let artistName: String
    let collectionName: String
    let artworkUrl100: String?
    let trackCount: Int
    let releaseDate: String
    let collectionId: Int 
}
