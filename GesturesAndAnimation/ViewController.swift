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
        //{} is a closure, which is like a function as argument
        //in this case it tells what to be animated
        UIView.animate(withDuration: 1.0, animations: {self.gestureNameLabel.alpha = 1.0}, completion: makeLabelInvisible(finished:))
    }
    
    func makeLabelInvisible(finished: Bool) {
        UIView.animate(withDuration: 1.0, animations: {self.gestureNameLabel.alpha =  0.0})
    }
}

