//
//  ContentView.swift
//  swift-ui-state
//
//  Created by Kenta Kamijo on 2022/06/19.
//

import SwiftUI

struct ContentView: View {
    @State var lastName = "田中"
    let firstName = "太郎"
    
    var body: some View {
        VStack {
            Button(action: {self.lastName = "鈴木"}) {
                Text("名字変更")
            }
            Text(lastName + firstName)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
