//
//  ViewController.swift
//  DiplomaWexUp
//
//  Created by Ayan on 4/27/22.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "WexUPLogo")
//        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
//        myView.addGestureRecognizer(tap)

    }
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        // handling code
    }
}
