//
//  ViewController.swift
//  Collection View
//
//  Created by Cntt19 on 4/26/17.
//  Copyright © 2017 Cntt19. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
var images = ["Mot","Hai","Ba","Bon", "Nam"]
    
    @IBOutlet weak var MyCollectView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.MyCollectView.delegate = self
        self.MyCollectView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collect_cell", for: indexPath) as! MyCollectionViewCell
        cell.myImageView.image = UIImage(named: images[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Selected row is ", indexPath.row)
    }

}

