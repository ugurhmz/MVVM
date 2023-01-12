//
//  HomeVC.swift
//  MVVM
//
//  Created by Ugur Hamzaoglu on 12.01.2023.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeLabel.text = "Welcome"
    }
    

   

}
