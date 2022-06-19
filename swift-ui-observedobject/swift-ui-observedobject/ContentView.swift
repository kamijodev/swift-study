//
//  ContentView.swift
//  swift-ui-observedobject
//
//  Created by Kenta Kamijo on 2022/06/19.
//

import SwiftUI

struct ContentView: View {
    // viewの更新をする
    @ObservedObject var userData = UserData(name: "鈴木", age: 20)
    
    var body: some View {
        VStack {
            Button(action: {
                userData.name = "佐藤"
            })
            {
                Text("名前を変える")
                    .padding()
            }
            Button(action: {userData.age += 1})
            {
                Text("歳を増やす")
                    .padding()
            }
            Text("\(userData.name)の年齢は\(userData.age)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
