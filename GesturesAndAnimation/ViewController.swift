//
//  ViewController.swift
//  GesturesAndAnimation
//
//  Created by Shafigh Khalili on 2020-01-17.
//  Copyright © 2020 Shafigh Khalili. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gestureNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func singleTap(_ sender: UITapGestureRecognizer) {
        gestureNameLabel.text = "Tap"
    }
    
}

