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
    
    private let loginVM = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginVM.error.bind { [weak self] error in
            if let error = error {
                self?.infoLabel.text = error
            } else {
                // GO HOME
                let homeVC = self?.storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
                self?.present(homeVC, animated: true)
            }
        }
    }

    
    
    @IBAction func loginBtnAct(_ sender: UIButton) {
        guard let name = nameTextField.text,
              let password = passwordTextField.text else {
                print(" name pw error")
            return
        }
        
        // viewModel -> login
        loginVM.login(name: name, password: password)
    }
    
}

