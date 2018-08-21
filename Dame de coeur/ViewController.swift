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
    
    var dameDeCoeur: Int!
    var cartes = [Carte]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cartes = [carte0,carte1,carte2,carte3]
        placerDameDeCoeur()
        
    }

    @IBAction func carteChoisie(_ sender: Any) {
        if let carte = sender as? Carte {
            if carte.tag == dameDeCoeur {
                carte.tourner(estCeLaDame: true)
                pasToucherCarte()
                Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { (t) in
                    self.rangerCartesEtPlcaerNouvelleDameDeCoeur()
                }
            } else {
                carte.tourner(estCeLaDame: false)
            }
            
        }
    }
    
    func pasToucherCarte() {
        for carte in cartes {
            carte.isUserInteractionEnabled = false
        }
    }
    
    func rangerCartesEtPlcaerNouvelleDameDeCoeur(){
        for carte in cartes {
            if carte.face {
                carte.tourner(estCeLaDame: false)
            }
            carte.isUserInteractionEnabled = true
        }
        placerDameDeCoeur()
    }
    
    func placerDameDeCoeur() {
        dameDeCoeur = Int(arc4random_uniform(UInt32(4)))
        
        
    }
    

}

