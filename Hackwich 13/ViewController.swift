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
    var targetValue: Int = 0
    //this is the target value
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        currentValue = slider.value
        //assigning target value to a random int
        targetValue = Int.random(in: 1...100)
        
        //call new round function
        restartRound()
    }
   

    @IBAction func myGuessButtonPressed(_ sender: Any)
    {
        
        let message = "The value is \(currentValue) \n The target value is \(targetValue)."
        
        
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        restartRound()
        
    }
    
    
    @IBAction func sliderHasMoved(_ sender: Any)
    {
        print("The value of the slider is: \(slider.value)")
        currentValue = slider.value
        
    }
    
    func restartRound()
        {
            targetValue = Int.random(in: 1...100)
            currentValue = slider.value
        }
    
    
    
}

