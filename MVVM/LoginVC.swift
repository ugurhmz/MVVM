//
//  ViewController.swift
//  MVVM
//
//  Created by Ugur Hamzaoglu on 12.01.2023.
//

import UIKit

class LoginVC: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    
    @IBAction func loginBtnAct(_ sender: UIButton) {
        guard let name = nameTextField.text,
              let password = passwordTextField.text else {
                infoLabel.textColor = .red
                infoLabel.text = "Name and password empty!"
            return
        }
        
        // viewModel -> login
    }
    
}

