//
//  AppListTableViewCell.swift
//  AssignmentTwo
//
//  Created by May Phoo on 07/02/2020.
//  Copyright © 2020 mayphoo. All rights reserved.
//

import UIKit
import SDWebImage

class AppListTableViewCell: UITableViewCell {
    
    static let identifier = "AppListTableViewCell"

    @IBOutlet weak var imageViewAppLogo: UIImageView!
    @IBOutlet weak var labelAppName: UILabel!
    @IBOutlet weak var labelAppCatchLine: UILabel!
    
    var data : MobileApp? {
        didSet {
            if let data = data {
                imageViewAppLogo.sd_setImage(with: URL(string: data.appIconUrl), completed: nil)
                labelAppName.text = data.appName
                labelAppCatchLine.text = data.appCatchLine
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
