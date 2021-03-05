//
//  ViewControllerFlowDelegate.swift
//  Collection Flow Layout
//
//  Created by Нургазы on 5/3/21.
//

import UIKit

class ViewControllerFlowDelegate: NSObject, UICollectionViewDelegateFlowLayout {
    
    let numberOfItemsPerRow: CGFloat
    let interItemSpacing: CGFloat
    
    init(numberOfItemsPerRow: CGFloat, interItemSpacing: CGFloat) {
        self.numberOfItemsPerRow = numberOfItemsPerRow
        self.interItemSpacing = interItemSpacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenWidth = UIScreen.main.bounds.width
        let totalSpacing = interItemSpacing * numberOfItemsPerRow
        
        let itemWidth = (screenWidth - totalSpacing) / numberOfItemsPerRow
        
        return CGSize(width: itemWidth, height: itemWidth)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return interItemSpacing
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return interItemSpacing
    }
    
}
