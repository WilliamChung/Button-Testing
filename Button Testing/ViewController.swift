//
//  ViewController.swift
//  Button Testing
//
//  Created by William on 2016-10-17.
//  Copyright © 2016 William. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //var timer = Timer()
    //var counter = 0
    
    var currentDown: Double = 0
    var oldDown: Double = 0
    var currentUp: Double = 0
    
    var timeStamp: String {
        return "\(NSDate().timeIntervalSince1970 * 1000)"
    }
    

    @IBOutlet weak var areaPress: UITextField!
    
    
    @IBOutlet weak var pressure: UITextField!
    
    @IBOutlet weak var upDownTime: UITextField!
    
    @IBOutlet weak var downDownTime: UITextField!
    
    @IBOutlet weak var timerField: UITextField!
    
    @IBAction func push(_ sender: AnyObject) {
        
        //timer = Timer.scheduledTimer(timeInterval: 1, target:self, selector: #selector(ViewController.updateCounter), userInfo: nil, repeats: true)
        
        oldDown = currentDown
        currentDown = 456//Double (timeStamp)!
        
        downDownTime.text = "1111"//String (currentDown - oldDown)
        timerField.text = "2222"//String (timeStamp)
    }

    @IBAction func release(_ sender: AnyObject) {
        //timer.invalidate()
        currentUp = 123//Double (timeStamp)!
        upDownTime.text = "3333"//String (currentUp)
    }
    
    /*
     func updateCounter() {
        
        //counter = counter + 1
        //timerField.text = String(counter)
    }
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
            //timerField.text = String(counter)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

