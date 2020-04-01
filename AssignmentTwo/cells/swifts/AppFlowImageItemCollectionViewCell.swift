//
//  AppFlowImageItemCollectionViewCell.swift
//  AssignmentTwo
//
//  Created by Phoo Phoo on 8/2/20.
//  Copyright © 2020 mayphoo. All rights reserved.
//

import UIKit

class AppFlowImageItemCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "AppFlowImageItemCollectionViewCell"

    @IBOutlet weak var imageViewAppFlowImage: UIImageView!
    
    var data : String? {
        didSet {
            if let data = data {
                imageViewAppFlowImage.sd_setImage(with: URL(string: data), completed: nil)
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
