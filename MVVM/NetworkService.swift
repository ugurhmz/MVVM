//
//  NetworkService.swift
//  MVVM
//
//  Created by Ugur Hamzaoglu on 12.01.2023.
//

import Foundation

final class NetworkService {
    static let shared = NetworkService()
    
    private var user: UserModel?
    
    private init() { }
    
    func login(name: String, password: String, completion: @escaping (Bool) -> Void) {
        
        if  name == "ugurhmz" &&
            password == "123456" {
            
            self.user = UserModel(name: name)
            completion(true)
        } else {
            self.user = nil
            completion(false)
        }
    }
    
    func getLoggedUser() -> UserModel {
        return user ?? UserModel(name: "empty")
    }
    
}
