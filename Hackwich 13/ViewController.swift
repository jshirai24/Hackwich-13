//
//  ViewController.swift
//  Hackwich 13
//
//  Created by Jillian Shirai on 4/16/26.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var slider: UISlider!
    var currentValue: Float = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        currentValue = slider.value
        
    }
   

    @IBAction func myGuessButtonPressed(_ sender: Any)
    {
        
        let message = "The value is \(currentValue)"
        
        
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
    
    
    @IBAction func sliderHasMoved(_ sender: Any)
    {
        print("The value of the slider is: \(slider.value)")
        currentValue = slider.value
        
    }
    
    
    
    
    
}

