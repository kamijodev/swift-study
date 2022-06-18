//
//  ContentView.swift
//  ChangeTextColor
//
//  Created by Kenta Kamijo on 2022/06/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List{
            Text("りんご")
                .foregroundColor(Color.red)
                .padding()
            Text("ばなな")
                .foregroundColor(Color.yellow)
                .padding()
            Text("みかん")
                .foregroundColor(Color.orange)
                .padding()
            Text("メロン")
                .foregroundColor(Color.orange)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
