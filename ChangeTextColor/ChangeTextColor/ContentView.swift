//
//  ContentView.swift
//  ChangeTextColor
//
//  Created by Kenta Kamijo on 2022/06/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, SwiftUI!")
            .foregroundColor(Color.purple)
            .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
