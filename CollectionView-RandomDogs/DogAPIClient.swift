//
//  DogAPIClient.swift
//  CollectionView-RandomDogs
//
//  Created by Matthew Ramos on 1/14/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import Foundation
import NetworkHelper

struct DogAPIClient {
    static func fetchDogs(completion: @escaping (Result<[String], Error>) -> ()) {
        let endpointURLString = "https://dog.ceo/api/breeds/image/random/50"
        guard let url = URL(string: endpointURLString) else {
            return
        }
    }
}
