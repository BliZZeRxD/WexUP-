import UIKit

class Vacancy: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func didTapButton(){
        
        let vc = UIViewController()
        vc.view.backgroundColor = .red
        
        navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func TGRPrime(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "PrimeSourceID") as! PrimeSource
        self.present(nextViewController, animated:true, completion:nil)
    }
    @IBAction func TGRKolesa(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "KolesaGroupID") as! KolesaGroup
        self.present(nextViewController, animated:true, completion:nil)
    }
    @IBAction func TGRKhan(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "KhanGroupID") as! KhanGroup
        self.present(nextViewController, animated:true, completion:nil)
    }
    @IBAction func TGRSber(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "SberBankID") as! SberBank
        self.present(nextViewController, animated:true, completion:nil)
    }
}
