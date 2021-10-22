//
//  NetworkDataFetch.swift
//  auth_valid_itunes_task
//
//  Created by mac on 20.10.2021.
//

import Foundation

class NetworkDataFetch {
    
    static let shared = NetworkDataFetch()
    
    init() {}
    
    func fetchAlbum(urlString: String, response: @escaping (AlbumModel?, Error?) -> Void) {
        
        NetworkRequest.shared.requestData(urlString: urlString) { result in
            switch result {
            case .success(let data):
                do {
                    let albums = try JSONDecoder().decode(AlbumModel.self, from: data)
                    response(albums, nil)
                } catch let jsonError {
                    print("Failed to decode JSON", jsonError)
                    
                }
            case .failure(let error):
                print("Error received reuesting data: \(error.localizedDescription)")
                response(nil, error)
            }
        }
    }
}
