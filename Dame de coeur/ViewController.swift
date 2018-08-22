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
    var label: CestGagne?
    
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
                label = CestGagne(frame: CGRect(x: 20, y: self.view.frame.height / 2 - 50, width: self.view.frame.width - 40, height: 100))
                view.addSubview(label!)
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
        if label != nil {
            label?.removeFromSuperview()
            label = nil
        }
    }
    
    func placerDameDeCoeur() {
        dameDeCoeur = Int(arc4random_uniform(UInt32(4)))
        
        
    }
    

}

