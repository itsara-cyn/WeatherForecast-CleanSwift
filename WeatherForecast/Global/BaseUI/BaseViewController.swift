//
//  BaseViewController.swift
//  WeatherForecast
//
//  Created by Itsaraporn Chaichayanon on 6/8/18.
//  Copyright © 2018 ItsaraChai. All rights reserved.
//

import UIKit
import MBProgressHUD

protocol BaseViewController: class {
    static var defaultReuseIdentifier: String { get }
}

extension BaseViewController where Self: UIViewController {
    static var defaultReuseIdentifier: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
    
    func displayLoading(isShow: Bool) {
        if (isShow) {
            DispatchQueue.main.async {
                MBProgressHUD.showAdded(to: self.view, animated: true)
            }
        }
        else {
            DispatchQueue.main.async {
                MBProgressHUD.hide(for: self.view, animated: true)
            }
        }
    }
    
    func displayOKAlert(message: String, onPressOK: (()->Void)? = nil) {
        let alertController = UIAlertController(title: "", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { (action: UIAlertAction) in
            onPressOK?()
        }
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }
}
