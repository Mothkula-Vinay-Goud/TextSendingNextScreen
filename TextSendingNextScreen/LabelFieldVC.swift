//
//  LabelFieldVC.swift
//  TextSendingNextScreen
//
//  Created by Vinay Goud Mothkula on 1/30/26.
//

import UIKit

class LabelFieldVC: UIViewController {

    @IBOutlet weak var labelField: UILabel!
    var data: String?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        labelField.text = data
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
