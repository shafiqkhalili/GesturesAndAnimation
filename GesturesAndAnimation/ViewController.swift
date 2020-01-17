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
    @IBOutlet var singleTapGestureRecognize: UITapGestureRecognizer!
    @IBOutlet var doubleTapGestureRecognize: UITapGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //To waite if double tap is clicked or doubletap failed
        singleTapGestureRecognize.require(toFail: doubleTapGestureRecognize)
    }
    
    
    
    @IBAction func singleTap(_ sender: UITapGestureRecognizer) {
        showGestureName(name: "Tap")
    }
    
    func makeLabelInvisible(finished: Bool) {
        UIView.animate(withDuration: 1.0, animations: {self.gestureNameLabel.alpha =  0.0})
    }
    @IBAction func doubleTap(_ sender: UITapGestureRecognizer) {
        showGestureName(name: "Double")
    }
    func showGestureName(name: String) {
        gestureNameLabel.text = name
        //{} is a closure, which is like a function as argument
        //in this case it tells what to be animated
        UIView.animate(withDuration: 1.0, animations: {self.gestureNameLabel.alpha = 1.0}, completion: makeLabelInvisible(finished:))
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            showGestureName(name: "Shake")
        }
    }
}

