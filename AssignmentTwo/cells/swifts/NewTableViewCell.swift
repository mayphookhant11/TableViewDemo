//
//  NewTableViewCell.swift
//  AssignmentTwo
//
//  Created by May Phoo on 07/02/2020.
//  Copyright © 2020 mayphoo. All rights reserved.
//

import UIKit

class NewTableViewCell: UITableViewCell {

    static let identifier = "NewTableViewCell"
    
    @IBOutlet weak var labelLatestVersion: UILabel!
    @IBOutlet weak var labelVersionInfo: UILabel!
    
    var data : MobileApp? {
        didSet {
            if let data = data {
                labelLatestVersion.text = data.latestVersion
                labelVersionInfo.text = data.versionInfo
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
