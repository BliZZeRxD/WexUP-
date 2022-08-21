//
//  Auth.swift
//  DiplomaWexUp
//
//  Created by Ayan on 5/6/22.
//

import UIKit

class Auth: UIViewController, UITextFieldDelegate {
//    let emailFromSite = StudGet()
//    let vacInfo = VacGet().takeVacancy()
    //var passwordFromSite: () = StudGet().takeStudentPassword()
   
    @IBOutlet weak var textF1: UITextField!
    @IBOutlet weak var textF2: UITextField!
    var email =  "";
    func takeStudentEmail(){
        let urlstring = "http://wexup.kz:8000/api/users/students/"
        guard let url = URL(string: urlstring) else {return}
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error{
                print(error)
                return
            }
            guard let studentData = data else {return}
            do{
                let student = try JSONDecoder().decode([StudentsData].self, from: studentData)
                self.email = (student.first?.email ?? "Not String") as String
                print(self.email)
            }
            catch{
                print(error)
            }
        }.resume()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        takeStudentEmail()
        let tap: UIGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(Registration.keyboardDismiss))
        
        view.addGestureRecognizer(tap)
        textF1.delegate = self
        textF1.tag = 0
        textF2.delegate = self
        textF2.tag = 1
    }
    
    
    @objc func keyboardDismiss(){
        view.endEditing(true)
    }
    
    @IBAction func openMain(_ sender: Any) {
       
        let emailTextField = textF1.text
        if emailTextField != nil {
            print(emailTextField)
        }
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        <#code#>
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        if let nextField = textField.superview?.viewWithTag(textField.tag+1) as? UITextField
        {
            nextField.becomeFirstResponder()
        }
        else
        {textField.resignFirstResponder()}
        return false
    }
//    func compareWithSite(){
//        if textF1.text == email {
//            let vc = storyboard?.instantiateViewController(withIdentifier: "mainVacancy") as! VacancyList
//            self.navigationController?.pushViewController(vc, animated: true)        }
//    }
}


