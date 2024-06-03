//
//  UIViewController+Ext.swift
//  GithubFollower
//
//  Created by Akshat Chaturvedi on 03/06/24.
//
import UIKit

extension UIViewController {
    
    func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve // fadeIn slowly
            self.present(alertVC,animated: true)
        }
    }
}
