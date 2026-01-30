//
//  ViewController.swift
//  TextSendingNextScreen
//
//  Created by Vinay Goud Mothkula on 1/30/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func buttonTapped(_ sender: Any) {
        
        
        
        
        if isValidTF(textField:self.textField){
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "LabelFieldVC") as! LabelFieldVC
            vc.data = textField.text
            
            self.navigationController?.pushViewController(vc, animated: true)
        }else{
            
                showAlert(self, message: "Text should be only characters and less than 10 characters")
               
            
        }
        
    }
    func isValidTF(textField: UITextField) -> Bool{
        
        var string: String = textField.text ?? ""
        if string.count  > 10 {
            return false
        }
        for each in string {
            if !each.isLetter{
                return false
            }
        }
        return true
        
    }
    func showAlert(_ sender: Any, message: String) {
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    

}

