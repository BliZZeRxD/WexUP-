import UIKit

class Search: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UIGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(Registration.keyboardDismiss))
        
        view.addGestureRecognizer(tap)
    }
    @objc func keyboardDismiss(){
        view.endEditing(true)
    }
    
    @IBAction func TGRPrime(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "PrimeSourceID") as! PrimeSource
        self.present(nextViewController, animated:true, completion:nil)
    }
    @IBAction func btnPressed1(_ sender: UIButton) {
        sender.backgroundColor = sender.backgroundColor == UIColor.red ? UIColor.black : UIColor(red: 1.00, green: 0.78, blue: 0.00, alpha: 1.00)
        sender.setTitle("Вы откликнулись", for: .normal)
        
    }
    @IBAction func TGRKolesa(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "KolesaGroupID") as! KolesaGroup
        self.present(nextViewController, animated:true, completion:nil)
    }
    @IBAction func btnPressed2(_ sender: UIButton) {
        sender.backgroundColor = sender.backgroundColor == UIColor.red ? UIColor.black : UIColor(red: 1.00, green: 0.78, blue: 0.00, alpha: 1.00)
        sender.setTitle("Вы откликнулись", for: .normal)
    }
    @IBAction func TGRKhan(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "KhanGroupID") as! KhanGroup
        self.present(nextViewController, animated:true, completion:nil)
    }
    @IBAction func btnPressed3(_ sender: UIButton) {
        sender.backgroundColor = sender.backgroundColor == UIColor.red ? UIColor.black : UIColor(red: 1.00, green: 0.78, blue: 0.00, alpha: 1.00)
        sender.setTitle("Вы откликнулись", for: .normal)
    }
    
    @IBAction func TGRSber(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "SberBankID") as! SberBank
        self.present(nextViewController, animated:true, completion:nil)
    }
    @IBAction func btnPressed4(_ sender: UIButton) {
        sender.backgroundColor = sender.backgroundColor == UIColor.red ? UIColor.black : UIColor(red: 1.00, green: 0.78, blue: 0.00, alpha: 1.00)
        sender.setTitle("Вы откликнулись", for: .normal)
    }
    @IBAction func btnPressed5(_ sender: UIButton) {
        sender.backgroundColor = sender.backgroundColor == UIColor.red ? UIColor.black : UIColor(red: 1.00, green: 0.78, blue: 0.00, alpha: 1.00)
        sender.setTitle("Вы откликнулись", for: .normal)
    }
    @IBAction func btnPressed6(_ sender: UIButton) {
        sender.backgroundColor = sender.backgroundColor == UIColor.red ? UIColor.black : UIColor(red: 1.00, green: 0.78, blue: 0.00, alpha: 1.00)
        sender.setTitle("Вы откликнулись", for: .normal)
    }
    @IBAction func btnPressed7(_ sender: UIButton) {
        sender.backgroundColor = sender.backgroundColor == UIColor.red ? UIColor.black : UIColor(red: 1.00, green: 0.78, blue: 0.00, alpha: 1.00)
        sender.setTitle("Вы откликнулись", for: .normal)
    }
    func createNewVacation(){
        
    }
}
