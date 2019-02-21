//
//  ViewController.swift
//  persistance
//
//  Created by Jacob Smith on 2/20/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var xInt: Int = 0
    var yInt: Int = 0
    @IBOutlet weak var xStepperObject: UIStepper!
    @IBOutlet weak var yStepperObject: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func xIntStepper(_ sender: UIStepper) {
        xInt = Int(sender.value)
        print(xInt)
        Point(x: xInt, y: yInt)
    }
    
    @IBAction func yIntStepper(_ sender: UIStepper) {
        yInt = Int(sender.value)
        print(yInt)
        Point(x: xInt, y: yInt)
    }
    
}

