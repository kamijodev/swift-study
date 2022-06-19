//
//  UserData.swift
//  swift-ui-observedobject
//
//  Created by Kenta Kamijo on 2022/06/19.
//

import SwiftUI

class UserData: ObservableObject {
    @Published var name: String
    @Published var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
