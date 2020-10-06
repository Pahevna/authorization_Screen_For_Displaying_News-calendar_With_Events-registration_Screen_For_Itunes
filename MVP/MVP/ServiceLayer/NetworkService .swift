//
//  NetworkService .swift
//  MVP
//
//  Created by mac on 04.10.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import Foundation

protocol NetworkServiceProtocol {
    func getComments(completion: @escaping (Result<[Comment]?, Error>) -> Void)
    }

class NetworkService: NetworkServiceProtocol {
    func getComments(completion: @escaping (Result<[Comment]?, Error>) -> Void) {
        let urlString = "https://jsonplaceholder.typicode.com/comments"
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            
            guard let data = data else { return }
            if let error = error {
                completion(.failure(error))
                return
            }
            do {
                let obj = try JSONDecoder().decode([Comment].self, from: data)            //do try catch ??? 
                completion(.success(obj))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
