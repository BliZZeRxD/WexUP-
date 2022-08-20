import UIKit

class WelcomeVC: UIViewController {

@IBOutlet weak var welcomeNext:UIButton!
    
 override func viewDidLoad() {
     super.viewDidLoad()
    
    }
    @IBAction func WelcomeNext(_ sender: UIButton){
        let vc = storyboard?.instantiateViewController(identifier: "create_vc") as! CreateVC;
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
}
