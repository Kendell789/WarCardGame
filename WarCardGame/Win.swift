//
//  Win.swift
//  WarCardGame
//
//  Created by Kendell Graham on 12/3/20.
//

import Foundation
import UIKit

class Win: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func tapScreen(_ sender: Any) {
        
        self.performSegue(withIdentifier: "returnW", sender: self)


    }
}
