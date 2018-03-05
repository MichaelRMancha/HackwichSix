//
//  ViewController.swift
//  HackwichSix
//
//  Created by CM Student on 3/5/18.
//  Copyright © 2018 CM Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var slider: UISlider!
    var currentValue: Int = 0
    
    
    @IBAction func sliderHasMoved(_ sender: Any) {
        print("The value of the slider is:\(slider.value)")
        currentValue = lroundf(slider.value)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func myGuessButtonPressed(_ sender: Any) {
        
        let message = "The value is: \(currentValue)"
        
        let alert = UIAlertController(title:"Hello World", message: message, preferredStyle: .alert)
        
//creating the alert view

//2.
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
    
//3.
        alert.addAction(action)
        
//4.
        present(alert, animated: true, completion:nil)

//5.
        
        
    
    }
    
    
}

