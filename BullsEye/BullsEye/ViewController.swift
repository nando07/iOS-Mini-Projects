//
//  ViewController.swift
//  BullsEye
//
//  Created by Fernando Gomez on 7/29/18.
//  Copyright © 2018 Nando Gomez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
   var currentValue: Int = 0
   var targetValue: Int = 0
   var score: Int = 0
   var round: Int = 0
   
   @IBOutlet weak var slider: UISlider!
   @IBOutlet weak var randomTarget: UILabel!
   @IBOutlet weak var scoreLabel: UILabel!
   @IBOutlet weak var roundLabel: UILabel!
   

   override func viewDidLoad() {
      super.viewDidLoad()
      let roundedValue = slider.value.rounded()
      currentValue = Int(roundedValue)
      startNewGame()
   
      let thumbImageNormal = UIImage(named: "SliderThumb-Normal")
      
      slider.setThumbImage(thumbImageNormal, for: .normal)
      
      let thumbImageHighlighted = UIImage(named: "SliderThumb-Highlighted")
      
      slider.setThumbImage(thumbImageHighlighted, for: .highlighted)
      
      let insets = UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
      
      // Left side of the slider (Minimum
      let trackLeftImage = UIImage(named: "SliderTrackLeft")
      let trackLeftResizable = trackLeftImage?.resizableImage(withCapInsets: insets)
      slider.setMinimumTrackImage(trackLeftResizable, for: .normal)
      
      // Right side of the slider (Maximum)
      let trackRightImage = UIImage(named: "SliderTrackRight")
      let trackRightResizable = trackRightImage?.resizableImage(withCapInsets: insets)
      slider.setMaximumTrackImage(trackRightResizable, for: .normal)
   }
   
   

   @IBAction func showAlert() {
      
      let difference: Int = abs(currentValue - targetValue)
      
      let points = 100 - difference
      
      var bonus: Int = 0
      
      var message: String;
      
      score += points;
      
      let title: String
      
      if difference == 0 {
         title = "Perfect!"
         bonus = 100
         score += bonus
      } else if difference == 1 {
         title = "Wow, you were so close!"
         bonus = 50
         score += bonus
      } else if difference < 5 {
         title = "You almost had it!"
      } else if difference < 10 {
         title = "Good!"
      } else {
         title = "Not even close..."
      }
      
      
      if bonus > 0 {
         message = "You scored \(points) points plus a bonus of \(bonus) points!"
      } else {
         message = "You scored \(points) points"
      }
      
      let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
      
      let action = UIAlertAction(title: "Awesome", style: .default, handler: {
         action in
         self.startNewRound()
      })
      
      alert.addAction(action)
      
      present(alert, animated: true, completion: nil)
      
  
      
   }
   
   @IBAction func sliderMoved(_ slider: UISlider) {
      print("The value of the slider is now: \(slider.value)")
      
      let roundedValue = slider.value.rounded()
      
      currentValue = Int(roundedValue)
   }
   

   func startNewRound() {
      targetValue = Int.random(in: 1...100)
      currentValue = 50
      slider.value = Float(currentValue)
      round += 1;
      updateLabels()
   }
   
   func updateLabels() {
      randomTarget.text = String(targetValue)
      scoreLabel.text = String(score)
      roundLabel.text = String(round)
   }
   
   @IBAction func startNewGame() {
      round = 0
      score = 0
      startNewRound()
   }
}

