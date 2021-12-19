//
//  Network.swift
//  Lab
//
//  Created by Issac on 2021/12/17.
//

import Foundation
import RxSwift

class Network {
    func load(url: String) -> Single<UIImage?> {
        let request = URLRequest(url: URL(string: url)!)
        
        return URLSession.shared.rx.response(request: request)
            .map({ UIImage(data: $0.data) })
            .asSingle()
    }
}

