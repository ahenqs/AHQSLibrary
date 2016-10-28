//
//  ViewController.swift
//  AHQSLibrary
//
//  Created by André Henrique da Silva on 28/10/2016.
//  Copyright © 2016 André Henrique da Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let coolView = UIView(frame: .zero)
        
        coolView.backgroundColor = .white
        
        view.addSubview(coolView)
        
        //you can save the constraint to variables
        let topConstraint = coolView.setupConstraints(topAnchor: view.topAnchor, topConstant: 0.0, leftAnchor: view.leadingAnchor, leftConstant: 0.0, bottomAnchor: view.bottomAnchor, bottomConstant: 0.0, rightAnchor: view.trailingAnchor, rightConstant: 0.0)["top"]
        
        print(topConstraint)
        
        let button = UIButton(type: .custom)
        button.setTitle("Click here", for: .normal)
        button.backgroundColor = .blue
        
        view.addSubview(button)
        
        _ = button.setupConstraints(topAnchor: nil, topConstant: 0.0, leftAnchor: view.leadingAnchor, leftConstant: 0.0, bottomAnchor: view.bottomAnchor, bottomConstant: 0.0, rightAnchor: view.trailingAnchor, rightConstant: 0.0)
        
        _ = button.setHeightRelativeTo(view, multiplier: 0.1)
        
        let label = UILabel(frame: .zero)
        label.textColor = UIColor.white
        label.font = UIFont(name: "HelveticaBold", size: 32.0)
        label.text = "Welcome"
        
        view.addSubview(label)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

