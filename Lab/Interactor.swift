//
//  Interactor.swift
//  Lab
//
//  Created by Ok Hyeon Kim on 2021/12/22.
//

import Foundation

class Interactor {
    let network = Network()
    
    let imagesURL = ["https://avatars.githubusercontent.com/u/62657991?v=4"]
    let profileURL = ["https://github.com/okstring"]
    
    func fetchAllImageData(index: Int, completion: @escaping ((Result<Data, Error>) -> ())) {
        network.getImage(url: imagesURL[index]) { result in
            completion(result)
        }
    }
}
