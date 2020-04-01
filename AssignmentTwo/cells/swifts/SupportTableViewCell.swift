//
//  SupportTableViewCell.swift
//  AssignmentTwo
//
//  Created by Phoo Phoo on 7/2/20.
//  Copyright © 2020 mayphoo. All rights reserved.
//

import UIKit

class SupportTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelType: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    @IBOutlet weak var imageViewIcon: UIImageView!
    
    static let identifier = "SupportTableViewCell"
    
    var data : AppSupport? {
        didSet {
            if let data = data {
                labelType.text = data.type
                labelDescription.text = data.description
//                imageViewIcon.sd_setImage(with: URL(string: data.icon), completed: nil)
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
