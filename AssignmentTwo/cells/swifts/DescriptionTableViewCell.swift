//
//  DescriptionTableViewCell.swift
//  AssignmentTwo
//
//  Created by May Phoo on 07/02/2020.
//  Copyright © 2020 mayphoo. All rights reserved.
//

import UIKit

class DescriptionTableViewCell: UITableViewCell {

    static let identifier = "DescriptionTableViewCell"
    
    @IBOutlet weak var labelAppAbout: UILabel!
    
    var data : MobileApp? {
        didSet {
            if let data = data {
                labelAppAbout.text = data.appAbout
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
