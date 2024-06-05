//
//  ErrorMessage.swift
//  GithubFollower
//
//  Created by Akshat Chaturvedi on 05/06/24.
//

import Foundation

enum ErrorMessage: String {
    case invalidUsername    = "This username created an invalid request. Please try again."
    case unableToComplete   = "Unable to complete your request. Please check your internet connection"
    case invalidResponse    = "Invalid response from the server. Please try again."
    case invalidData        = "The data received from the server was invalid. Please try again."
}
