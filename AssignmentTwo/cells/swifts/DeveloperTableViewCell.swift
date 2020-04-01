//
//  DeveloperTableViewCell.swift
//  AssignmentTwo
//
//  Created by May Phoo on 07/02/2020.
//  Copyright © 2020 mayphoo. All rights reserved.
//

import UIKit

class DeveloperTableViewCell: UITableViewCell {

    static let identifier = "DeveloperTableViewCell"
    
    @IBOutlet weak var labelCompanyName: UILabel!
    @IBOutlet weak var labelAppDeveloper: UILabel!
    
    var data : MobileApp? {
        didSet {
            if let data = data {
                labelCompanyName.text = data.companyName
                labelAppDeveloper.text = data.appDeveloper
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
