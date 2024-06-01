//
//  SearchVC.swift
//  GithubFollower
//
//  Created by Akshat Chaturvedi on 25/05/24.
//

import UIKit

class SearchVC: UIViewController {
    
    let logoImageView = UIImageView()
    let usernameTxtField = GFTextField()
    let callToActionButton = GFButton(backgroundColor: .systemGreen, title: "Get Followers")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureLogoImageView()
        configureTextField()
        configureActionButton()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    func configureLogoImageView() {
        view.addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.image = UIImage(named: "gh-logo")!
        
        NSLayoutConstraint.activate([
        
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 80),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.widthAnchor.constraint(equalToConstant: 200),
            logoImageView.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    func configureTextField() {
        view.addSubview(usernameTxtField)
        usernameTxtField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            usernameTxtField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 80),
            usernameTxtField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            usernameTxtField.widthAnchor.constraint(equalToConstant: 250),
            usernameTxtField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func configureActionButton() {
        view.addSubview(callToActionButton)
        callToActionButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            callToActionButton.topAnchor.constraint(equalTo: self.usernameTxtField.bottomAnchor, constant: 100),
            callToActionButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            callToActionButton.widthAnchor.constraint(equalToConstant: 250),
            callToActionButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
}
