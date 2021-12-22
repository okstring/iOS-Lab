//
//  Network.swift
//  Lab
//
//  Created by Ok Hyeon Kim on 2021/12/21.
//

import Foundation

class Network {
    
    func getImage(url: String, completion: @escaping (Result<Data, Error>) -> ()) {
        guard let url = URL(string: url) else {
            completion(.failure(NSError()))
            return
        }
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data else {
                completion(.failure(NSError()))
                return
            }
            
            DispatchQueue.main.async {
                completion(.success(data))
            }
        }.resume()
    }
}
