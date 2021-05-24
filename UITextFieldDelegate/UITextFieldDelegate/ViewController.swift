//
//  ViewController.swift
//  UITextFieldDelegate
//
//  Created by Jaemin Lee on 2021/05/24.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputTextField.delegate = self
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: Any) {
//        resultLabel.text = inputTextField.text
//        resultLabel.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        resultLabel.text = inputTextField.text
//        inputTextField.text = resultLabel.text
            return true
        }
        
}

