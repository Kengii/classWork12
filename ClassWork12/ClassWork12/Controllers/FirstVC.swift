//
//  ViewController.swift
//  ClassWork12
//
//  Created by Martynov Evgeny on 25.01.22.
//

import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var testLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToSecond() {
        let text = "goToSecond"
        performSegue(withIdentifier: "Go_to_VC_by_Segue", sender: text)
    }
    
    @IBAction func goToThird() {
        let vc = ThirdVC(nibName: "ThirdVC", bundle: nil)
        vc.navigationItem.title = "ThirdVC"
        vc.testText = "Привет из Первого"
        vc.navigationItem.title = "XIB VC"
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func goToFouthVC() {
        let storyboard = UIStoryboard(name: "SecondStoryboard", bundle: nil)
        guard let fouthVC = storyboard.instantiateViewController(identifier: "FouthVC") as? FouthVC else {
            return
        }
        fouthVC.navigationItem.title = "Fouth VC !!!"
        navigationController?.pushViewController(fouthVC, animated: true)
    }
    
    @IBAction func unwindToFirst(_ unwindSegue: UIStoryboardSegue) {
        if let sourceViewController = unwindSegue.source as? FouthVC {
            testLbl.text = "From  \(String(describing: sourceViewController.navigationItem.title))"
        }
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(segue.destination)
        print(segue.identifier ?? "")

//        if segue.identifier == "Go_to_VC_by_Segue",
//           let test = sender as? String
//        {
//            segue.destination.navigationItem.title = test
//        }

        if let vc = segue.destination as? SecondVC,
           let text = sender as? String
        {
            vc.testText = "Привет из prepare for segue"
            vc.navigationItem.title = text
            vc.firstVC = self
        }
    }
    
    func changeValue(text: String) {
        testLbl.text = text
    }
}
