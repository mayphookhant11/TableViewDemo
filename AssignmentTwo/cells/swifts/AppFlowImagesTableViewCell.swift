//
//  AppFlowImagesTableViewCell.swift
//  AssignmentTwo
//
//  Created by Phoo Phoo on 8/2/20.
//  Copyright © 2020 mayphoo. All rights reserved.
//

import UIKit

class AppFlowImagesTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    static let identifier = "AppFlowImagesTableViewCell"

    @IBOutlet weak var collectionViewScreenShot: UICollectionView!
    
    var data : MobileApp? {
        didSet {
            collectionViewScreenShot.reloadData()
            
//            if let data = data {
//                collectionViewScreenShot.reloadData()
//            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        collectionViewScreenShot.register(UINib(nibName: AppFlowImageItemCollectionViewCell.identifier, bundle: nil),
                                          forCellWithReuseIdentifier: AppFlowImageItemCollectionViewCell.identifier)
        collectionViewScreenShot.dataSource = self
        collectionViewScreenShot.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data?.appFlowImages.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AppFlowImageItemCollectionViewCell.identifier, for: indexPath) as? AppFlowImageItemCollectionViewCell else {
                return UICollectionViewCell()
        }
        cell.data = data?.appFlowImages[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 250, height: 450)
    }
}
