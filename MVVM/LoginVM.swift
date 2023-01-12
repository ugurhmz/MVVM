//
//  LoginVM.swift
//  MVVM
//
//  Created by Ugur Hamzaoglu on 12.01.2023.
//

import Foundation

final class LoginViewModel {
    var error: ObserverObject<String?> = ObserverObject(nil)
    
    func login(name: String, password: String) {
        NetworkService.shared.login(name: name, password: password) { [weak self] success in
            self?.error.value = success ? nil : "Invalid Cred."
        }
    }
}
