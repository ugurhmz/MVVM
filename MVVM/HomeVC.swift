//
//  HomeVC.swift
//  MVVM
//
//  Created by Ugur Hamzaoglu on 12.01.2023.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    private let homeVM = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        homeVM.welcomeMsg.bind { [weak self] msg in
            self?.welcomeLabel.text = msg
        }
        
        homeVM.getUser()
    }

}
