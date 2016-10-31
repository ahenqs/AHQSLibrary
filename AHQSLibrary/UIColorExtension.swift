//
//  UIColorExtension.swift
//  AHQSLibrary
//
//  Created by André Henrique da Silva on 31/10/2016.
//  Copyright © 2016 André Henrique da Silva. All rights reserved.
//

import UIKit

extension UIColor {
    
    class func rgb(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat = 1.0) -> UIColor {
        
        return  UIColor(red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: alpha)
    }

}
