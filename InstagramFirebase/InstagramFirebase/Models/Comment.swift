//
//  Comment.swift
//  InstagramFirebase
//
//  Created by Christopher Lee on 6/12/17.
//  Copyright © 2017 Christopher Lee. All rights reserved.
//

import Foundation

struct Comment {
    
    let text: String
    let uid: String
    let user: User
    
    init(user: User, dictionary: [String: Any]) {
        self.text = dictionary["text"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""
        self.user = user
    }
}
