import UIKit

class Account: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var textF1: UITextField!
    @IBOutlet weak var textF2: UITextField!
    @IBOutlet weak var textF3: UITextField!
    @IBOutlet weak var textF4: UITextField!
    @IBOutlet weak var textF5: UITextField!

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
        textF5.delegate = self
        textF5.tag = 4
    }
    @objc func keyboardDismiss(){
        view.endEditing(true)
    }
   
    @IBAction func showAlertTapped(_ sender: UIButton) {
        // create the alert
                let alert = UIAlertController(title: "Отлично!", message: "Мы сохранили ваше резюме", preferredStyle: UIAlertController.Style.alert)

                // add an action (button)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

                // show the alert
                self.present(alert, animated: true, completion: nil)
    }
    @IBAction func funcText(_ sender: UITextField)
    {
        sender.textAlignment = .left
        sender.contentVerticalAlignment = .top
    }
    @IBAction func funcText1(_ sender: UITextField) {
        sender.textAlignment = .left
        sender.contentVerticalAlignment = .top
    }
    @IBAction func funcText2(_ sender: UITextField) {
        sender.textAlignment = .left
        sender.contentVerticalAlignment = .top
    }
    @IBAction func funcText3(_ sender: UITextField) {
        sender.textAlignment = .left
        sender.contentVerticalAlignment = .top
    }
    @IBAction func funcText4(_ sender: UITextField) {
        sender.textAlignment = .left
        sender.contentVerticalAlignment = .top
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
    
    


