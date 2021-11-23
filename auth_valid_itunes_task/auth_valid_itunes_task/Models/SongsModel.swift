//
//  SongsModel.swift
//  auth_valid_itunes_task
//
//  Created by mac on 25.10.2021.
//

import Foundation

struct SongModel: Decodable {
    let results: [Song]
}

struct Song: Decodable {
    let trackName: String?
}
