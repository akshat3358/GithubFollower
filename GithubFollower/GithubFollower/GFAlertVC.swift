//
//  GFAlertVC.swift
//  GithubFollower
//
//  Created by Akshat Chaturvedi on 03/06/24.
//

import UIKit

class GFAlertVC: UIViewController {

    
    let ContainerView = GFContainerView(backgroundColor: .systemBackground)
    let titlLabel = GFTitleLabel(textAlignment: .center, fontSize: 20)
    let messageLabel = GFBodyLabel(textAlignment: .center)
    let actionButton = GFButton(backgroundColor: .systemPink, title: "Ok")
    let padding: CGFloat = 20
    
    var alertTitle: String?
    var message: String?
    var buttonTitle: String?
    
    init(title: String, message: String, buttonTitle: String) {
        super.init(nibName: nil, bundle: nil)
        self.alertTitle = title
        self.message = message
        self.buttonTitle = buttonTitle
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.75)
        
        configureContainerView()
        configureTitleLabel()
        configureActionButton()
        configureMessageLabel()
    }

    
    func configureContainerView() {
        view.addSubview(ContainerView)
        
        NSLayoutConstraint.activate([
            ContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            ContainerView.widthAnchor.constraint(equalToConstant: 280),
            ContainerView.heightAnchor.constraint(equalToConstant: 220)
            
        ])
    }
    
    func configureTitleLabel() {
        ContainerView.addSubview(titlLabel)
        titlLabel.text = alertTitle ?? "Something went wrong"
        
        NSLayoutConstraint.activate([
            titlLabel.topAnchor.constraint(equalTo: ContainerView.topAnchor, constant: padding),
            titlLabel.leadingAnchor.constraint(equalTo: ContainerView.leadingAnchor, constant: padding),
            titlLabel.trailingAnchor.constraint(equalTo: ContainerView.trailingAnchor, constant: -padding),
            titlLabel.heightAnchor.constraint(equalToConstant: 28)
        ])
    }
    
    func configureActionButton() {
        ContainerView.addSubview(actionButton)
        actionButton.setTitle(buttonTitle ?? "Ok", for: .normal)
        actionButton.addTarget(self, action: #selector(dismissvc), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            actionButton.bottomAnchor.constraint(equalTo: ContainerView.bottomAnchor, constant: -padding),
            actionButton.leadingAnchor.constraint(equalTo: ContainerView.leadingAnchor, constant: padding),
            actionButton.trailingAnchor.constraint(equalTo: ContainerView.trailingAnchor, constant: -padding),
            actionButton.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
    
    func configureMessageLabel() {
        ContainerView.addSubview(messageLabel)
        messageLabel.text = message ?? "Unable to complete request"
        messageLabel.numberOfLines = 4
        
        NSLayoutConstraint.activate([
            messageLabel.topAnchor.constraint(equalTo:  titlLabel.bottomAnchor, constant: 8),
            messageLabel.leadingAnchor.constraint(equalTo: ContainerView.leadingAnchor, constant: padding),
            messageLabel.trailingAnchor.constraint(equalTo: ContainerView.trailingAnchor, constant: -padding),
            messageLabel.bottomAnchor.constraint(equalTo: actionButton.topAnchor, constant: -12)
        ])
    }
    
    @objc func dismissvc() {
        dismiss(animated: true)
    }
    
    
}
