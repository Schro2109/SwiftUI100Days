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
    
    enum Weekday: Int {
        case monday = 1
            case tuesday = 2
            case wednesday = 3
            case thursday = 4
            case friday = 5
            case saturday = 6
            case sunday = 7
    }
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
            VStack{
                Text("Enum")
                ForEach([Weekday.monday, Weekday.tuesday, Weekday.friday], id: \.self) { item in
                    Text("\(item.rawValue), isFriday? : \(item == .friday ? "Yes" : "No")")
                    
                }
            }.padding()
        }
        
    }
    
}

#Preview {
    ContentView()
}
