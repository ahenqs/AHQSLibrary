//
//  ViewController.swift
//  AHQSLibrary
//
//  Created by André Henrique da Silva on 28/10/2016.
//  Copyright © 2016 André Henrique da Silva. All rights reserved.
//

import UIKit
import AssetsLibrary

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let coolView = UIView(frame: .zero)
        coolView.backgroundColor = UIColor.rgb(red: 255, green: 255, blue: 200)
        view.addSubview(coolView)

        //you can save the constraint to variables
        _ = coolView.setupConstraints(topAnchor: view.topAnchor, topConstant: 0.0, leftAnchor: view.leadingAnchor, leftConstant: 0.0, bottomAnchor: view.bottomAnchor, bottomConstant: 0.0, rightAnchor: view.trailingAnchor, rightConstant: 0.0)["top"]

        let imageView = UIImageView(frame: .zero)
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .white
        view.addSubview(imageView)
        
        imageView.loadImageFromURLString(urlString: "https://s-media-cache-ak0.pinimg.com/564x/6d/7b/af/6d7bafbe04701e92393eb2af5d6a0f77.jpg")
        
        let button = UIButton(type: .custom)
        button.setTitle("Click here", for: .normal)
        button.backgroundColor = UIColor.rgb(red: 255, green: 90, blue: 90)
        
        view.addSubview(button)
        
        _ = button.setupConstraints(topAnchor: nil, topConstant: 0.0, leftAnchor: view.leadingAnchor, leftConstant: 0.0, bottomAnchor: view.bottomAnchor, bottomConstant: 0.0, rightAnchor: view.trailingAnchor, rightConstant: 0.0)
        
        _ = button.setHeightRelativeTo(view, multiplier: 0.1)
        
        _ = imageView.setupConstraints(topAnchor: view.topAnchor, topConstant: 0.0, leftAnchor: view.leadingAnchor, leftConstant: 0.0, bottomAnchor: button.topAnchor, bottomConstant: 0.0, rightAnchor: view.trailingAnchor, rightConstant: 0.0)
        
        
        let label = UILabel(frame: .zero)
        label.textColor = UIColor.white
        label.font = UIFont(name: "HelveticaBold", size: 32.0)
        label.text = "Welcome"
        
        view.addSubview(label)
        
        //to test cache of image
        let tap = UITapGestureRecognizer(target: self, action: #selector(reloadImage(_:)))
        imageView.isUserInteractionEnabled = true
        imageView.addGestureRecognizer(tap)
    }
    
    func reloadImage(_ recognizer: UITapGestureRecognizer) {
        
        let imageView = recognizer.view as! UIImageView
        
        imageView.loadImageFromURLString(urlString: "https://s-media-cache-ak0.pinimg.com/564x/6d/7b/af/6d7bafbe04701e92393eb2af5d6a0f77.jpg")
    }
    
}

