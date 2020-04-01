//
//  ViewController.swift
//  AssignmentTwo
//
//  Created by May Phoo on 07/02/2020.
//  Copyright © 2020 mayphoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewAppList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableViewAppList.register(UINib(nibName: AppListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: AppListTableViewCell.identifier)
        
        tableViewAppList.dataSource = self
        tableViewAppList.delegate = self
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        appRepo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: AppListTableViewCell.identifier,for: indexPath) as?
            AppListTableViewCell else {
                return UITableViewCell()
        }
        
        cell.data = appRepo[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        let vc = self.storyboard?.instantiateViewController(withIdentifier: String(describing: AppDetailViewController.self)) as!
        AppDetailViewController
        
        vc.data = appRepo[indexPath.row]
        
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
}

