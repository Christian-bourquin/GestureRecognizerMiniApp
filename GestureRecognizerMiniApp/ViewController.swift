//
//  ViewController.swift
//  GestureRecognizerMiniApp
//
//  Created by CHRISTIAN BOURQUIN on 10/2/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bottomLeft: UIImageView!
    
    @IBOutlet weak var topRight: UIImageView!
    
    @IBOutlet weak var topLeft: UIImageView!
    
    @IBOutlet weak var bottomRight: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bottomLeft.image = UIImage(named: "bLeft")
        topRight.image = UIImage(named: "tRight")
        topLeft.image = UIImage(named: "tLeft")
        bottomRight.image = UIImage(named: "bRight")
    }

    @IBAction func tapMove(_ sender: UITapGestureRecognizer) {
        
        var temp = sender.location(in: view)
        bottomLeft.center = temp
        
    }
    
    @IBAction func trPan(_ sender: UIPanGestureRecognizer) {
        var temp = sender.location(in: view)
        topRight.center = temp
    }
    
    @IBAction func brPan(_ sender: UIPanGestureRecognizer) {
        var temp = sender.location(in: view)
        bottomRight.center = temp
    }
    
    @IBAction func tlPan(_ sender: UIPanGestureRecognizer) {
        var temp = sender.location(in: view)
        topLeft.center = temp
    }
    
    
    
    

}

