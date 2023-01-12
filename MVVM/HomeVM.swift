//
//  HomeVM.swift
//  MVVM
//
//  Created by Ugur Hamzaoglu on 12.01.2023.
//

import Foundation

final class HomeViewModel {
    var welcomeMsg: ObserverObject<String?> = ObserverObject(nil)
    
    func getUser() {
        let user = NetworkService.shared.getLoggedUser()
        self.welcomeMsg.value = "Welcome \(user.name)"
    }
}
