//
//  ViewController.swift
//  Sup World
//
//  Created by h01 on 2018-01-20.
//  Copyright © 2018 h01. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var output: UILabel!
    
    
    @IBOutlet weak var input: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBAction func action(_ sender: UIButton) {
        output.text = "Hello,  \((input.text)!) \((lastName.text)!)"
    }
   
    @IBOutlet weak var math: UILabel!
    
    @IBOutlet weak var numberA: UITextField!
    
    @IBOutlet weak var numberB: UITextField!
    
    @IBAction func sum(_ sender: UIButton) {
        //var test : [Int: Any] = Int(numberA.text!) + Int(numberB.text!)
      math.text = (Int(numberA.text!)!) + (Int(numberB.text!)!)
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

