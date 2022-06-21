//
//  UserTask.swift
//  TodoApp
//
//  Created by Kenta Kamijo on 2022/06/21.
//

import SwiftUI

struct Task: Identifiable {
    let id = UUID()
    var title: String
    var checked: Bool
    
    init(title: String, checked: Bool) {
        self.title = title
        self.checked = checked
    }
}
