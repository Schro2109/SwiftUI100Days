//
//  ContentView.swift
//  SwiftUI100Days
//
//  Created by Schro on 9/14/26.
//

import SwiftUI

struct ContentView: View {
    var myDict: [String: String] = ["이름": "이시우", "나이": "23", "취미": "SwiftUI 학습"]
    var mySet: Set<String> = ["한국어", "English","日本語"]
    var body: some View {
        HStack{
            VStack {
                Text("Dictionary")
                Text(myDict["이름"] ?? "")
                Text(myDict["나이"] ?? "")
                Text(myDict["취미"] ?? "")
            }
            .padding()
            .onAppear(){
                print("Hello World!")
            }
            VStack{
                Text("DataSet")
                ForEach(mySet.sorted().reversed(), id: \.self) { item in
                    Text(item)
                }
                
            }.padding()
                .onAppear(){
                    print("Hello World!")
                }
        }
        
    }
    
}

#Preview {
    ContentView()
}
