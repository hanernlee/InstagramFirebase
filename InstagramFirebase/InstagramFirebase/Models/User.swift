//
//  User.swift
//  InstagramFirebase
//
//  Created by Christopher Lee on 2/12/17.
//  Copyright © 2017 Christopher Lee. All rights reserved.
//

import Foundation

struct User {
    let uid: String
    let username: String
    let profileImageUrl: String
    
    init(uid: String, dictionary: [String: Any]) {
        self.uid = uid
        self.username = dictionary["username"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
    }
}
