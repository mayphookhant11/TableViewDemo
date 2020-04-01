//
//  CategoryTableViewCell.swift
//  AssignmentTwo
//
//  Created by May Phoo on 07/02/2020.
//  Copyright © 2020 mayphoo. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    
    static let identifier = "CategoryTableViewCell"

    @IBOutlet weak var labelRatingAppStore: UILabel!
    @IBOutlet weak var labelAgeLimit: UILabel!
    @IBOutlet weak var labelRatingCount: UILabel!
    @IBOutlet weak var labelCategory: UILabel!
    
    var data : MobileApp? {
        didSet {
            if let data = data {
                labelRatingAppStore.text = String(data.ratingAppStore)
                labelAgeLimit.text = String(data.ageLimit)
                labelRatingCount.text = String(data.ratingCount)
                labelCategory.text = data.category
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
