//
//  Post.swift
//  InstagramFirebase
//
//  Created by Christopher Lee on 3/12/17.
//  Copyright © 2017 Christopher Lee. All rights reserved.
//

import Foundation

struct Post {
    let user: User
    let imageUrl: String
    let caption: String
    
    init(user: User, dictionary: [String: Any]) {
        self.user = user
        self.imageUrl = dictionary["imageUrl"] as? String ?? ""
        self.caption = dictionary["caption"] as? String ?? ""
    }
}
