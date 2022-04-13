//
//  SecViewController.swift
//  MadLibs
//
//  Created by Tarooti on 12/05/1443 AH.
//

import UIKit
protocol SecDelegate: AnyObject {
    func SendSentence(_ text : String)
}
class SecViewController: UIViewController {

    @IBOutlet weak var input1: UITextField!
    @IBOutlet weak var input2: UITextField!
    @IBOutlet weak var input3: UITextField!
    @IBOutlet weak var input4: UITextField!
    
    var delegate : SecDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnSubmit(_ sender: Any) {
        guard let adjective = input1.text else{ return }
        guard let verb1 = input2.text else{ return }
        guard let verb2 = input3.text else{ return }
        guard let noun = input4.text else{ return }
        
        let sentence = "We are having a perfectly \(adjective) right now. Later we will \(verb1) and \(verb2) in the \(noun)"
        
        delegate?.SendSentence(sentence)
        
        self.dismiss(animated: true,completion: nil) 
    }
}
