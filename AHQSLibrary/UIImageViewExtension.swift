//
//  UIImageViewExtension.swift
//  AHQSLibrary
//
//  Created by André Henrique da Silva on 31/10/2016.
//  Copyright © 2016 André Henrique da Silva. All rights reserved.
//

import UIKit

let imageCache = NSCache<AnyObject, AnyObject>()

extension UIImageView {
    
    func loadImageFromURLString(urlString: String) {
    
        //sets image to nil, could be a placeholder
        self.image = nil
        
        //search for image in cache
        if let cachedImage = imageCache.object(forKey: urlString as AnyObject) as? UIImage {
            self.image = cachedImage
            return
        }
        
        //loads image from url
        if let url = URL(string: urlString) {
         
            URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
                
                if error != nil {
                    print(error as! NSError)
                    return
                }
                
                DispatchQueue.main.async(execute: { 
                
                    if let downloadedData = data {
                        
                        if let downloadedImage = UIImage(data: downloadedData) {
                            
                            imageCache.setObject(downloadedImage, forKey: urlString as AnyObject)
                            
                            self.image = downloadedImage
                            
                        }
                        
                    }
                })
                
            }).resume()
        }
    }
}
