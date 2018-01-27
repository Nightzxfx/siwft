//
//  ViewController.swift
//  Timer
//
//  Created by h01 on 2018-01-27.
//  Copyright © 2018 h01. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var time = 0
    //timer
    var timer = Timer()
    //pause
    var reset = 0
   var isRunning = false
    
    @IBAction func start(_ sender: UIButton) {
   
        if (isRunning) {
            return
        }
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(action), userInfo: nil, repeats: true)
        isRunning = true
    }
    
    
    
    @IBAction func reset(_ sender: UIButton) {
        time = 0
        label.text! = String(0)
    }
    
    
    
    
    
    
    @IBAction func pause(_ sender: UIButton) {
             isRunning = false
        timer.invalidate()
  
    }
    
    @objc func action() {
        time += 1
        label.text = String(time)
        
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

