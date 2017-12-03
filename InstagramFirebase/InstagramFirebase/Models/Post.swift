//
//  Post.swift
//  InstagramFirebase
//
//  Created by Christopher Lee on 3/12/17.
//  Copyright © 2017 Christopher Lee. All rights reserved.
//

import Foundation

struct Post {
    let imageUrl: String
    
    init(dictionary: [String: Any]) {
        self.imageUrl = dictionary["imageUrl"] as? String ?? ""
    }
}
