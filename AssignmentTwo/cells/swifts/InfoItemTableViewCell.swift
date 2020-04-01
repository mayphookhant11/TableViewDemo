//
//  InfoItemTableViewCell.swift
//  AssignmentTwo
//
//  Created by Phoo Phoo on 7/2/20.
//  Copyright © 2020 mayphoo. All rights reserved.
//

import UIKit

class InfoItemTableViewCell: UITableViewCell {

    static let identifier = "InfoItemTableViewCell"
    
    @IBOutlet weak var labelType: UILabel!
    @IBOutlet weak var labelValue: UILabel!
    
    var data : AppInfo? {
        didSet {
            if let data = data {
                labelType.text = data.type
                labelValue.text = data.value
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
