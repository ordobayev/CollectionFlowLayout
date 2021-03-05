//
//  ViewControllerDataSource.swift
//  Collection Flow Layout
//
//  Created by Нургазы on 5/3/21.
//

import UIKit

class ViewControllerDataSource: NSObject, UICollectionViewDataSource {
    
    let data = EmogiData.shared.data
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return data.count
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data[section].emogi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: EmogiCell.identifier, for: indexPath) as! EmogiCell
        
        cell.emogiLabel.text = data[indexPath.section].emogi[indexPath.item]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: Headerview.identifier, for: indexPath) as! Headerview
        
        header.headerLabel.text = data[indexPath.section].sectionName
        
        return header
    }
    
}
