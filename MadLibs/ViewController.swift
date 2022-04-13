//
//  ViewController.swift
//  MadLibs
//
//  Created by Tarooti on 12/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnCreate(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecViewControll") as! SecViewController
        
        vc.delegate = self
        vc.modalPresentationStyle = .fullScreen
        
        present(vc,animated: true,completion: nil)
    }
    
}

extension ViewController:SecDelegate{
    func SendSentence(_ text: String) {
        lbl1.text = text
    }
    
    
}

