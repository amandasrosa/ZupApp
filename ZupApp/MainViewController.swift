//
//  ViewController.swift
//  ZupApp
//
//  Created by Amanda Rosa on 2018-11-20.
//  Copyright © 2018 Amanda Rosa. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var btnRepositories: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()        
        btnRepositories.backgroundColor = UIColor.orange
        btnRepositories.layer.cornerRadius = 8
        btnRepositories.layer.borderWidth = 1
        btnRepositories.layer.borderColor = UIColor.darkGray.cgColor
        btnRepositories.contentEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
    }

}

