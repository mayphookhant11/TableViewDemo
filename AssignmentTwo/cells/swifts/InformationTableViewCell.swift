//
//  InformationTableViewCell.swift
//  AssignmentTwo
//
//  Created by Phoo Phoo on 7/2/20.
//  Copyright © 2020 mayphoo. All rights reserved.
//

import UIKit

class InformationTableViewCell: UITableViewCell {
    
    static let identifier = "InformationTableViewCell"

    @IBOutlet weak var tabelViewAppInfoList: UITableView!
    
    var data : MobileApp? {
        didSet{
            if let data = data {
                data.appInfo
            }
        }
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        tabelViewAppInfoList.register(UINib(nibName: InfoItemTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: InfoItemTableViewCell.identifier)
        
        tabelViewAppInfoList.dataSource = self
        tabelViewAppInfoList.delegate = self
    
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension InformationTableViewCell : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data?.appInfo.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: InfoItemTableViewCell.identifier, for: indexPath) as?
            InfoItemTableViewCell else {
                return UITableViewCell()
        }
    
        cell.data = data?.appInfo[indexPath.row]
        
        return cell
    }
    
    
}
