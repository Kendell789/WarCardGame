//
//  ViewController.swift
//  WarCardGame
//
//  Created by Kendell Graham on 12/1/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
   
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    @IBOutlet weak var dealButton: UIButton!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
   
    
    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
            //print(leftNumber)
        
        let rightNumber = Int.random(in: 2...14)
            //print(rightNumber)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
    

        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        
        if  leftNumber == rightNumber {
            //WAR!!!!
            dealButton.isEnabled = false
            DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(1500)) {
                self.performSegue(withIdentifier: "firstSegue", sender: self)
                
            }
        }
        else if leftNumber > rightNumber {
            //Player Wins
            
            leftScore += 1
            leftScoreLabel.text = String(leftScore)

        }
        else{
            //CPU wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)

        }
            
        
    }
    
    

}

