//
//  drawBattle.swift
//  WarCardGame
//
//  Created by Kendell Graham on 12/3/20.
//

import Foundation
import UIKit

class drawBattle: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.isUserInteractionEnabled = true
        firstCardL.image = UIImage(named: "back")
        firstCardR.image = UIImage(named: "back")
        secondCardL.image = UIImage(named: "back")
        secondCardR.image = UIImage(named: "back")
        thirdCardL.image = UIImage(named: "back")
        thirdCardR.image = UIImage(named: "back")
        fourthCardL.image = UIImage(named: "back")
        fourthCardR.image = UIImage(named: "back")
        
        
        secondCardL.isHidden = true
        secondCardR.isHidden = true
        thirdCardL.isHidden = true
        thirdCardR.isHidden = true
        fourthCardL.isHidden = true
        fourthCardR.isHidden = true
        De.isHidden = true
        clair.isHidden = true
        WAR.isHidden = true

    }
    
    @IBOutlet weak var I: UILabel!
    @IBOutlet weak var De: UILabel!
    @IBOutlet weak var clair: UILabel!
    @IBOutlet weak var WAR: UILabel!
    
    @IBOutlet weak var firstCardL: UIImageView!
    @IBOutlet weak var secondCardL: UIImageView!
    @IBOutlet weak var thirdCardL: UIImageView!
    @IBOutlet weak var fourthCardL: UIImageView!
    @IBOutlet weak var firstCardR: UIImageView!
    @IBOutlet weak var secondCardR: UIImageView!
    @IBOutlet weak var thirdCardR: UIImageView!
    @IBOutlet weak var fourthCardR: UIImageView!
        

    

    

    
    @IBAction func firstTapScreen(_ sender: Any) {
        
        view.isUserInteractionEnabled = false
        
        secondCardL.isHidden = false
        secondCardR.isHidden = false
        thirdCardL.isHidden = true
        thirdCardR.isHidden = true
        fourthCardL.isHidden = true
        fourthCardR.isHidden = true
        De.isHidden = false
        clair.isHidden = true
        WAR.isHidden = true
        
        let leftFirstWarNumber = Int.random(in: 2...14)
        let rightFirstWarNumber = Int.random(in: 2...14)
        
        firstCardL.image = UIImage(named: "card\(leftFirstWarNumber)")

        firstCardR.image = UIImage(named: "card\(rightFirstWarNumber)")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(750)) {
            self.secondCardL.isHidden = false
            self.secondCardR.isHidden = false
            self.thirdCardL.isHidden = false
            self.thirdCardR.isHidden = false
            self.fourthCardL.isHidden = true
            self.fourthCardR.isHidden = true
            self.De.isHidden = false
            self.clair.isHidden = false
            self.WAR.isHidden = true
                
                let leftSecondWarNumber = Int.random(in: 2...14)
                let rightSecondWarNumber = Int.random(in: 2...14)
                
            self.secondCardL.image = UIImage(named: "card\(leftSecondWarNumber)")

            self.secondCardR.image = UIImage(named: "card\(rightSecondWarNumber)")
        
            DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(750)) {
            
            self.secondCardL.isHidden = false
            self.secondCardR.isHidden = false
            self.thirdCardL.isHidden = false
            self.thirdCardR.isHidden = false
            self.fourthCardL.isHidden = false
            self.fourthCardR.isHidden = false
            self.De.isHidden = false
            self.clair.isHidden = false
            self.WAR.isHidden = false
            
                    let leftThirdWarNumber = Int.random(in: 2...14)
                    let rightThirdWarNumber = Int.random(in: 2...14)
                    
            self.thirdCardL.image = UIImage(named: "card\(leftThirdWarNumber)")
                    
            self.thirdCardR.image = UIImage(named: "card\(rightThirdWarNumber)")
        
            DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(750)) {
                let leftFourthWarNumber = Int.random(in: 2...14)

                let rightFourthWarNumber = Int.random(in: 2...14)

                
                self.fourthCardL.image = UIImage(named: "card\(leftFourthWarNumber)")
                
                self.fourthCardR.image = UIImage(named: "card\(rightFourthWarNumber)")
    
                if  leftFourthWarNumber == rightFourthWarNumber {
                    DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(2500)) {

                    self.viewDidLoad()
                    self.viewWillAppear(true)
                    }
                }
                else if leftFourthWarNumber > rightFourthWarNumber{
                    DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(2500)) {
                    self.performSegue(withIdentifier: "winSegue", sender: self)
                        }
                    }
                else{
                    DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(2500)) {

                       self.performSegue(withIdentifier: "lossSegue", sender: self)
                    }
}
    }
}
        }
    }
}
        

        

        

        
