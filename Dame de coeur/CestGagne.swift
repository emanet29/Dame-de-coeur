
//
//  CestGagne.swift
//  Dame de coeur
//
//  Created by Snoopy on 22/08/2018.
//  Copyright © 2018 EMANET. All rights reserved.
//

import UIKit

class CestGagne: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        montrerEtAnimaer()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        montrerEtAnimaer()
    }
    
    func montrerEtAnimaer() {
        backgroundColor = UIColor.darkGray
        text = "C'est Gagné !!"
        textColor = .red
        font = UIFont.boldSystemFont(ofSize: 30)
        adjustsFontSizeToFitWidth = true
        textAlignment = .center
        layer.cornerRadius = 25
        alpha = 0
        
        UIView.animate(withDuration: 0.5, animations: {
            self.alpha = 1
            self.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        }) { (success) in
            UIView.animate(withDuration: 0.5, animations: {
                self.transform = CGAffineTransform.identity
            }, completion: nil)
        }
    }
    
}
