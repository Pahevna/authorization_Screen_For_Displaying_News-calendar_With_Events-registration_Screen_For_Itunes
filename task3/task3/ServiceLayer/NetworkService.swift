//
//  NetworkService.swift
//  task3
//
//  Created by mac on 19.01.2021.
//

import Foundation

protocol NetworkServiceProtocol {
    func getNews(completion: @escaping (Result<Response?, Error>) -> Void)
}

class NetworkService: NetworkServiceProtocol {
    func getNews(completion: @escaping (Result<Response?, Error>) -> Void) {
        let urlString = "https://content.guardianapis.com/search?api-key=17b0d369-2abc-4aac-9f22-97619b66faf9"
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, error) in
                if let error = error {
                    print("Some error")
                    completion(.failure(error))
                    return
                }
                guard let data = data else { return }
                do {
                    let news = try JSONDecoder().decode(Response?.self, from: data)
                    completion(.success(news))
                } catch {
                    completion(.failure(error))
                    print("Failed to decode JSON", error)
                }
        }.resume()
    }
}
