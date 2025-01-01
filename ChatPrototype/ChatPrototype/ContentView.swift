//
//  ContentView.swift
//  ChatPrototype
//  
//  Created by warabico.develop on 2024/12/02
//  
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 25) {
            Text("Knock, knock!")
                .padding()
                .background(Color.orange, in: RoundedRectangle(cornerRadius: 8))
                .shadow(radius: 5)
            Text("Who's there?")
                .padding()
                .background(Color.teal, in: RoundedRectangle(cornerRadius: 8))
                .shadow(radius: 5)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
