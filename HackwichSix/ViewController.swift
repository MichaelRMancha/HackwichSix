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
    
    var targetValue: Int = 0
    
    @IBAction func sliderHasMoved(_ sender: Any) {
        print("The value of the slider is:\(slider.value)")
        currentValue = lroundf(slider.value)
    
    }
    @IBOutlet var targetLabel: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    currentValue = lroundf(slider.value)
    startNewRound()
        let thumbImageNormal = UIImage(named: "SliderThumb-Normal")
        slider.setThumbImage(thumbImageNormal, for: .normal)
    
    }
    func updateTargetLabel(){
    targetLabel.text = String(targetValue)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func myGuessButtonPressed(_ sender: Any) {
        
        let message = "The value is: \(currentValue)" + "\nThe target value is: \(targetValue)"
        
        let alert = UIAlertController(title:"Hello World", message: message, preferredStyle: .alert)
        
//creating the alert view

//2.
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
    
//3.
        alert.addAction(action)
        
//4.
        present(alert, animated: true, completion:nil)
              startNewRound()
    }
//5.
        func startNewRound() {
            
            targetValue = 1 + Int(arc4random_uniform(100))
            currentValue = 50
            slider.value = Float(currentValue)
            updateTargetLabel()

    }

    
    
}

