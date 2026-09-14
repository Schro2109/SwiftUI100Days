//
//  ContentView.swift
//  SwiftUI100Days
//
//  Created by Schro on 9/14/26.
//

import SwiftUI

struct ContentView: View {
    var myDict: [String: String] = ["이름": "이시우", "나이": "23", "취미": "SwiftUI 학습"]
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(myDict["이름"] ?? "")
            Text(myDict["나이"] ?? "")
            Text(myDict["취미"] ?? "")
        }
        .padding()
        .frame(width: 500, height: 300)
        .onAppear(){
            print("Hello World!")
        }
    }
    
}

#Preview {
    ContentView()
}
