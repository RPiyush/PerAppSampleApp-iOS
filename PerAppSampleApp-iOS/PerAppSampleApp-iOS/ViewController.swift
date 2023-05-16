//
//  ViewController.swift
//  PerAppSampleApp-iOS
//
//  Created by Piyush Rathi on 16/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var appSettingsButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textLabel.text = "AppSelectionLable".localizeString() + getAppLanguage()
        appSettingsButton.titleLabel?.text = "ProfileScreenBtn".localizeString()
    }

    @IBAction func onAppSettingsButtonAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
        self.navigationController?.pushViewController(vc, animated: true)
    }

    private func getAppLanguage() -> String {
        let appLang = NSLocale.preferredLanguages.first ?? "en"
        switch appLang {
        case "es":
            return "Spanish"
        default:
            return "English"
        }
    }
}

extension String {
    func localizeString() -> String {
        let path = Bundle.main.path(forResource: langCode, ofType: "lproj")
        let bundle = Bundle(path: path!)
        return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
    }
    
    var langCode: String {
        NSLocale.preferredLanguages.first ?? "en"
    }
}
