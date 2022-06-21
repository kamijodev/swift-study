//
//  ContentView.swift
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

struct ContentView: View {
    var tasks = [
        Task(title: "散歩", checked: true),
        Task(title: "料理", checked: false),
        Task(title: "筋トレ", checked: true)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(tasks) { task in
                    ListRow(task: task.title, isCheck: task.checked)
                }
                Text("+")
                    .font(.title)
            }
            .navigationBarTitle(Text("Tasks"))
            .navigationBarItems(trailing: Text("Delete"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
