//
//  ObserverObject.swift
//  MVVM
//
//  Created by Ugur Hamzaoglu on 12.01.2023.
//

import Foundation

final class ObserverObject<T> {
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    private var listener: ((T) -> Void)?
    
    init(_ value: T) {
        self.value = value
    }
    
    func bind(_ listener: @escaping (T) -> Void) {
        listener(value)
        self.listener = listener
    }
}
