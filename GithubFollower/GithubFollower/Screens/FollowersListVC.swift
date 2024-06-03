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
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }

}
