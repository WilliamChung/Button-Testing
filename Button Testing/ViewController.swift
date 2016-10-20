//
//  ViewController.swift
//  Button Testing
//
//  Created by William on 2016-10-17.
//  Copyright © 2016 William. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var counter = 0

    @IBOutlet weak var areaPress: UITextField!
    
    
    @IBOutlet weak var pressure: UITextField!
    
    @IBOutlet weak var upDownTime: UITextField!
    
    @IBOutlet weak var downDownTime: UITextField!
    
    @IBOutlet weak var timerField: UITextField!
    
    @IBAction func push(_ sender: AnyObject) {
        
        timer = Timer.scheduledTimer(timeInterval: 0.01, target:self, selector: #selector(ViewController.updateCounter), userInfo: nil, repeats: true)
    }

    @IBAction func release(_ sender: AnyObject) {
        timer.invalidate()
    }
    
    func updateCounter() {
        
        counter = counter + 0.01
        timerField.text = String(counter)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
            timerField.text = String(counter)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

