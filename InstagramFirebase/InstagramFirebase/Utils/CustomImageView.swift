//
//  CustomImageView.swift
//  InstagramFirebase
//
//  Created by Christopher Lee on 3/12/17.
//  Copyright © 2017 Christopher Lee. All rights reserved.
//

import UIKit

class CustomImageView: UIImageView {
    
    var lastURLUserToLoadImage: String?
    
    func loadImage(urlString: String) {
        lastURLUserToLoadImage = urlString
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("Failed to fetch post image:", error)
                return
            }
            
            if url.absoluteString != self.lastURLUserToLoadImage {
                return
            }
            
            guard let imageData = data else { return }
            
            let photoImage = UIImage(data: imageData)
            
            DispatchQueue.main.async {
                self.image = photoImage
            }
            }.resume()
    }
}
