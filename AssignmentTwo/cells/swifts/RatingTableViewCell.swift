//
//  RatingTableViewCell.swift
//  AssignmentTwo
//
//  Created by May Phoo on 07/02/2020.
//  Copyright © 2020 mayphoo. All rights reserved.
//

import UIKit

class RatingTableViewCell: UITableViewCell {

    static let identifier = "RatingTableViewCell"
    
    @IBOutlet weak var labelRatingAppStore: UILabel!
    @IBOutlet weak var labelRatingCount: UILabel!
    @IBOutlet weak var collectionViewAppReview: UICollectionView!
    
    var data : MobileApp? {
        didSet {
            if let data = data {
                labelRatingAppStore.text = String(data.ratingCount)
                labelRatingCount.text = "\(data.ratingAppStore) Ratings"
            }
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        collectionViewAppReview.register(UINib(nibName: RatingCommentCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: RatingCommentCollectionViewCell.identifier)
        
        collectionViewAppReview.dataSource = self
        collectionViewAppReview.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension RatingTableViewCell : UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data?.ratingComments.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RatingCommentCollectionViewCell.identifier, for: indexPath) as? RatingCommentCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.data = data?.ratingComments[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 380, height: 203)
    }
    
}
