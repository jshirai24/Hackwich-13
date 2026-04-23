//
//  ViewController.swift
//  Hackwich 13
//
//  Created by Jillian Shirai on 4/16/26.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var targetLabel: UILabel!
    
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
        
       //setting up variable to store the slider's image and assign slider to that image
        let thumbImageNormal = UIImage(named:"SliderThumb-Normal")!
        slider.setThumbImage(thumbImageNormal, for: .normal)
        
        
        
        
    }
   

    @IBAction func myGuessButtonPressed(_ sender: Any)
    {
        
        let message = "Your Guess is: \(currentValue) \n The Target Value for this round was: \(targetValue)."
        
        
        let alert = UIAlertController(title: "Guess the Number Game", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "New Round", style: .default, handler: nil)
        
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
            updateTargetLabel()
        }
    func updateTargetLabel ()
    {
        targetLabel.text = "\(targetValue)"
    }
    
    
}

