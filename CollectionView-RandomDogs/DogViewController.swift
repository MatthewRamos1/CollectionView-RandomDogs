//
//  ViewController.swift
//  CollectionView-RandomDogs
//
//  Created by Matthew Ramos on 1/14/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import UIKit

class DogViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension DogViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dogCell", for: indexPath) as? DogCell else {
            fatalError("Could not downcast to dog cell")
        }
        return cell
    }
}
