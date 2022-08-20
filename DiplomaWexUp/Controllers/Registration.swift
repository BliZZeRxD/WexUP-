//
//  Registration.swift
//  DiplomaWexUp
//
//  Created by Ayan on 5/6/22.
//

import UIKit

class Registration: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var textF1: UITextField!
    @IBOutlet weak var textF2: UITextField!
    @IBOutlet weak var textF3: UITextField!
    @IBOutlet weak var textF4: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UIGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(Registration.keyboardDismiss))
        
        view.addGestureRecognizer(tap)
        
        textF1.delegate = self
        textF1.tag = 0
        textF2.delegate = self
        textF2.tag = 1
        textF3.delegate = self
        textF3.tag = 2
        textF4.delegate = self
        textF4.tag = 3
    }
    @objc func keyboardDismiss(){
        view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        if let nextField = textField.superview?.viewWithTag(textField.tag+1) as? UITextField{
            nextField.becomeFirstResponder()
       } else {
                textField.resignFirstResponder()
            }
            return false
        }
    }




