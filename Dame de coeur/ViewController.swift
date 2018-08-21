//
//  ViewController.swift
//  Dame de coeur
//
//  Created by Snoopy on 21/08/2018.
//  Copyright © 2018 EMANET. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var carte0: Carte!
    @IBOutlet weak var carte1: Carte!
    
    @IBOutlet weak var carte2: Carte!
    @IBOutlet weak var carte3: Carte!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func carteChoisie(_ sender: Any) {
        if let carte = sender as? Carte {
            carte.tourner()
        }
    }
    

}

