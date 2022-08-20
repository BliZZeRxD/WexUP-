//
//  PrimeSource.swift
//  DiplomaWexUp
//
//  Created by Ayan on 6/18/22.
//

import UIKit

class PrimeSource: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func respondBtn(_ sender: UIButton) {
        sender.backgroundColor = sender.backgroundColor == UIColor.red ? UIColor.black : UIColor(red: 1.00, green: 0.78, blue: 0.00, alpha: 1.00)
        sender.setTitle("Вы откликнулись", for: .normal)

    }
}

    
