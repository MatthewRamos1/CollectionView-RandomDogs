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
    static func fetchDogs(completion: @escaping (Result<[String], AppError>) -> ()) {
        let endpointURLString = "https://dog.ceo/api/breeds/image/random/50"
        guard let url = URL(string: endpointURLString) else {
            completion(.failure(.badURL(endpointURLString)))
            return
        }
        let request = URLRequest(url: url)
        NetworkHelper.shared.performDataTask(with: request, completion: { (result) in
            switch result {
            case .failure(let appError):
                completion(.failure(.networkClientError(appError)))
            case .success(let data):
                do {
                    let results = try JSONDecoder().decode(RandomDogInfo.self, from: data)
                    completion(.success(results.message))
                } catch {
                    completion(.failure(.decodingError(error)))
                }
            }
        }
        )
    }
}
