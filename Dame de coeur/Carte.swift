//
//  Carte.swift
//  Dame de coeur
//
//  Created by Snoopy on 21/08/2018.
//  Copyright © 2018 EMANET. All rights reserved.
//

import UIKit

class Carte: UIButton {
    
    var face = false
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func tourner(estCeLaDame: Bool) {
        var option: UIViewAnimationOptions!
        
        if face {
            setImage(#imageLiteral(resourceName: "dos"), for: .normal)
            face = false
            option = .transitionFlipFromLeft
        } else {
            if estCeLaDame {
                setImage(#imageLiteral(resourceName: "coeur"), for: .normal)
            } else {
                setImage(#imageLiteral(resourceName: "pique"), for: .normal)
            }
            face = true
            option = .transitionFlipFromRight
        }
        
        UIView.transition(with: self, duration: 0.5, options: option, animations: nil, completion: nil)
    }
    
}
