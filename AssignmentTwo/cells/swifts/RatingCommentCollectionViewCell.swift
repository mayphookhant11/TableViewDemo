//
//  RatingCommentCollectionViewCell.swift
//  AssignmentTwo
//
//  Created by Phoo Phoo on 8/2/20.
//  Copyright © 2020 mayphoo. All rights reserved.
//

import UIKit

class RatingCommentCollectionViewCell: UICollectionViewCell {

    static let identifier = "RatingCommentCollectionViewCell"
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelDate: UILabel!
    @IBOutlet weak var labelUserName: UILabel!
    @IBOutlet weak var labelDetail: UILabel!
    
    var data : RatingComment? {
        didSet {
            if let data = data {
                labelTitle.text = data.title
                labelDate.text = data.date
                labelDetail.text = data.commentDetails
                labelUserName.text = data.username
            }
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
