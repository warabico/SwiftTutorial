//
//  SettingsView.swift
//  ScoreKeeper
//  
//  Created by warabico.develop on 2025/01/02
//  
//

import SwiftUI

struct SettingsView: View {
    @Binding var startingPoints: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Game Rules")
                .font(.headline)
            Divider()
            Picker("Starting Points", selection: $startingPoints) {
                Text("0 starting points")
                    .tag(0)
                Text("10 starting points")
                    .tag(10)
                Text("20 starting points")
                    .tag(20)
            }
        }
        .padding()
        .background(.thinMaterial, in: .rect(cornerRadius: 10.0))
    }
}

#Preview {
    @Previewable @State var startingPoints = 10
    SettingsView(startingPoints: $startingPoints)
}
