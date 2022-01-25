//
//  SecondVC.swift
//  ClassWork12
//
//  Created by Martynov Evgeny on 25.01.22.
//

import UIKit

class SecondVC: UIViewController {
    
    var testText: String = ""
    var firstVC: FirstVC?

    @IBOutlet weak var textLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLbl.text = testText
    }
    
    @IBAction func goBack() {
//        firstVC?.testLbl.text = "Hellow from Second VC"
        firstVC?.navigationItem.title = "Первый !!!"
        firstVC?.changeValue(text: "Hellow from Second VC")
        navigationController?.popToRootViewController(animated: true)
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
