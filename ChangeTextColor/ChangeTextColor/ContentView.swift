//
//  ContentView.swift
//  ChangeTextColor
//
//  Created by Kenta Kamijo on 2022/06/19.
//

import SwiftUI

func Report() {
    print("ボタンが押された")
}

struct Human: Identifiable {
    let id = UUID()
    let name: String
}

struct ArrayContentView: View {
    let humans = [
        Human(name: "田中"),
        Human(name: "鈴木"),
        Human(name: "佐藤")
    ]
    
    var body: some View {
        List {
            ForEach(humans) { human in
                Text(human.id.description)
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        // 半開区間
        List {
            ForEach(0..<11) { num in
                Text("\(num): hello")
            }
        }
        
//        List{
//            Button(action: Report) {
//                Text("ボタン")
//            }.padding()
//
//            Button(action: {print("ボタン2がおされた")}) {
//                Text("ボタン2")
//            }.padding()
//        }
        
        
//        // fontsize
//        List{
//            Text("Hello")
//                .padding()
//                .font(.largeTitle)
//            Text("Hello")
//                .padding()
//                .font(.title)
//            Text("Hello")
//                .padding()
//                .font(.headline)
//        }
        
//        // HStackで囲むとtextを並べれる
//        HStack {
//            Text(">")
//            Text("Hello").padding()
//        }
//        NavigationView{
//            Text("hello")
//                .navigationBarTitle(Text("タイトル"))
//                .navigationBarItems(leading: Text("アイテム"))
//                .navigationBarItems(trailing: Text("アイテム"))
//        }
//        List{
//            Text("りんご")
//                .foregroundColor(Color.red)
//                .padding()
//            Text("ばなな")
//                .foregroundColor(Color.yellow)
//                .padding()
//            Text("みかん")
//                .foregroundColor(Color.orange)
//                .padding()
//            Text("メロン")
//                .foregroundColor(Color.green)
//                .padding()
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        ContentView()
        ArrayContentView()
    }
}
