//
//  AppDetailViewController.swift
//  AssignmentTwo
//
//  Created by May Phoo on 07/02/2020.
//  Copyright © 2020 mayphoo. All rights reserved.
//

import Foundation
import UIKit

enum DetailSection : Int {
    case Title = 0
    case Category = 1
    case AppFlowImages = 2
    case Description = 3
    case Developer = 4
    case Rating = 5
    case New = 6
    case Information = 7
    case Support = 8
}

class AppDetailViewController: UIViewController {
    
    var items : [DetailSection] = [
        DetailSection.Title,
        DetailSection.Category,
        DetailSection.AppFlowImages,
        DetailSection.Description,
        DetailSection.Developer,
        DetailSection.Rating,
        DetailSection.New,
        DetailSection.Information,
        DetailSection.Support
    ]
    
    @IBOutlet weak var tableViewAppDetail: UITableView!
    
    var data : MobileApp?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initView()
    }
    
    private func initView() {
        
        tableViewAppDetail.register(UINib(nibName: TitleTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: TitleTableViewCell.identifier)
        
        tableViewAppDetail.register(UINib(nibName: CategoryTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: CategoryTableViewCell.identifier)
        
        tableViewAppDetail.register(UINib(nibName: AppFlowImagesTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: AppFlowImagesTableViewCell.identifier)
        
        tableViewAppDetail.register(UINib(nibName: DescriptionTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DescriptionTableViewCell.identifier)
        
        tableViewAppDetail.register(UINib(nibName: DeveloperTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DeveloperTableViewCell.identifier)
        
        tableViewAppDetail.register(UINib(nibName: RatingTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: RatingTableViewCell.identifier)
        
        tableViewAppDetail.register(UINib(nibName: NewTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: NewTableViewCell.identifier)
        
        tableViewAppDetail.register(UINib(nibName: InformationTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: InformationTableViewCell.identifier)
        
        tableViewAppDetail.register(UINib(nibName: SupportTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: SupportTableViewCell.identifier)
        
        tableViewAppDetail.dataSource = self
        
        
        
    }
    
}


extension AppDetailViewController : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let type = items[indexPath.section]
        
        switch type {
        case DetailSection.Title:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: TitleTableViewCell.identifier, for: indexPath) as? TitleTableViewCell else {
                return UITableViewCell()
            }
            cell.data = data
            return cell
            
        case DetailSection.Category:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: CategoryTableViewCell.identifier, for: indexPath) as? CategoryTableViewCell else {
                return UITableViewCell()
            }
            cell.data = data
            return cell
            
        case DetailSection.AppFlowImages:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: AppFlowImagesTableViewCell.identifier, for: indexPath) as? AppFlowImagesTableViewCell else {
                return UITableViewCell()
            }
            cell.data = data
            return cell
        case DetailSection.Description:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: DescriptionTableViewCell.identifier, for: indexPath) as? DescriptionTableViewCell else {
                return UITableViewCell()
            }
            cell.data = data
            return cell
        case DetailSection.Developer:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: DeveloperTableViewCell.identifier, for: indexPath) as? DeveloperTableViewCell else {
                return UITableViewCell()
            }
            cell.data = data
            return cell
        case DetailSection.Rating:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: RatingTableViewCell.identifier, for: indexPath) as? RatingTableViewCell else {
                return UITableViewCell()
            }
            cell.data = data
            return cell
        case DetailSection.New:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: NewTableViewCell.identifier, for: indexPath) as? NewTableViewCell else {
                return UITableViewCell()
            }
            cell.data = data
            return cell
        case DetailSection.Information:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: InformationTableViewCell.identifier, for: indexPath) as? InformationTableViewCell else {
                return UITableViewCell()
            }
            cell.data = data
            return cell
        case DetailSection.Support:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SupportTableViewCell.identifier, for: indexPath) as? SupportTableViewCell else {
                return UITableViewCell()
            }
            cell.data = data?.appSupport[indexPath.row]
            return cell
            
            
            
        }
    }
    
    
}
