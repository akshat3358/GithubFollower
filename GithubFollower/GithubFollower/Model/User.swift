//
//  User.swift
//  GithubFollower
//
//  Created by Akshat Chaturvedi on 04/06/24.
//

import Foundation

struct User : Codable {
    var login: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var htmlUrl: String
    var following: Int
    var followers: Int
    var createAt: String
}
