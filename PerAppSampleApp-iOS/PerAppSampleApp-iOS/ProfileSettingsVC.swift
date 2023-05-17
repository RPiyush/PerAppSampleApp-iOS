//
//  ProfileSettingsVC.swift
//  PerAppSampleApp-iOS
//
//  Created by Piyush Rathi on 18/05/23.
//

import UIKit

class ProfileSettingsVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "ProfileLable".localizeString()
        restorationIdentifier = "ProfileSettingsVC"
        restorationClass = ProfileSettingsVC.self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "SettingsCell")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsCell", for: indexPath)
        // Configure the cell...
        cell.textLabel?.text = "ChangeLangageLabel".localizeString()
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let url = URL(string: UIApplication.openSettingsURLString) {
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
// Manually Handling State Restoration
extension ProfileSettingsVC: UIViewControllerRestoration {
    static func viewController(withRestorationIdentifierPath identifierComponents: [String], coder: NSCoder) -> UIViewController? {
       ProfileSettingsVC()
    }
}
