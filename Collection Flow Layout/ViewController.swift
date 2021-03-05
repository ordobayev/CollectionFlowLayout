//
//  ViewController.swift
//  Collection Flow Layout
//
//  Created by Нургазы on 1/3/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var dataSource = ViewControllerDataSource()
    var delegate = ViewControllerFlowDelegate(numberOfItemsPerRow: 4, interItemSpacing: 10)
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = dataSource
        collectionView.delegate = delegate
    }
}

