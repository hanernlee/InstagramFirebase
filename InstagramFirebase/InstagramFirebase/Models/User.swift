//
//  User.swift
//  InstagramFirebase
//
//  Created by Christopher Lee on 2/12/17.
//  Copyright © 2017 Christopher Lee. All rights reserved.
//

import Foundation

struct User {
    let username: String
    let profileImageUrl: String
    
    init(dictionary: [String: Any]) {
        self.username = dictionary["username"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
    }
}
