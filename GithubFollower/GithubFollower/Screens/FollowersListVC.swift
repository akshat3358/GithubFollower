//
//  FollowersListVC.swift
//  GithubFollower
//
//  Created by Akshat Chaturvedi on 03/06/24.
//

import UIKit

class FollowersListVC: UIViewController {

    var username : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        
        
        NetworkManager.shared.getFollowers(for: username, page: 1) { result in
            
            switch result {
                
            case .success(let followers):
                print(followers)
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "Something went wrong", message: error.rawValue, buttonTitle: "Ok")
            }
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
//        navigationController?.isNavigationBarHidden = false
    }
}
