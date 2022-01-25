//
//  ThirdVC.swift
//  ClassWork12
//
//  Created by Martynov Evgeny on 25.01.22.
//

import UIKit

class ThirdVC: UIViewController {

    @IBOutlet weak var testLbl: UILabel!
    
    var testText: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        testLbl.text = testText
    }
    
    @IBAction func goBack() {
        
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
