//
//  FouthVC.swift
//  ClassWork12
//
//  Created by Martynov Evgeny on 25.01.22.
//

import UIKit

class FouthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToFirst() {
        
        //TODO: - еще логика
        
        performSegue(withIdentifier: "unwindToFirst", sender: nil)
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
