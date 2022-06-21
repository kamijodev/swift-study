//
//  ContentView.swift
//  TodoApp
//
//  Created by Kenta Kamijo on 2022/06/21.
//

import SwiftUI

struct ContentView: View {
    var userData = UserData()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(userData.tasks) { task in
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
