//
//  BaseController.swift
//  WeatherBro
//
//  Created by SangNX on 5/30/20.
//  Copyright © 2020 SangNX. All rights reserved.
//

import UIKit
import SafariServices

class BaseController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        _setHideNavigationBar()
    }
    
    func _setHideNavigationBar() {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    func makeBrowerInApp(url: String? = nil) {
        guard let strURL = url else { return }
        if UIApplication.shared.canOpenURL(URL(string: strURL)!) {
            var safariController: SFSafariViewController?
            if #available(iOS 11.0, *) {
                safariController = SFSafariViewController(url: URL(string: strURL)!)
            } else {
                safariController = SFSafariViewController(url: URL(string: strURL)!, entersReaderIfAvailable: true)
            }
            self.present(safariController!, animated: true, completion: nil)
        }
    }

}
