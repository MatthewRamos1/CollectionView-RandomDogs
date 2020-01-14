//
//  RandomDogInfo.swift
//  CollectionView-RandomDogs
//
//  Created by Matthew Ramos on 1/14/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import Foundation

typealias DogImage = String

struct RandomDogInfo: Decodable {
    let message: [DogImage]
}
