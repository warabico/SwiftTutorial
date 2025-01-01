//
//  FeaturesPage.swift
//  OnboardingFlow
//  
//  Created by warabico.develop on 2024/12/02
//  
//

import SwiftUI

struct FeaturesPage: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Features")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.bottom)
                .padding(.top, 100)
            
            FeatureCard(
                iconName: "person.2.crop.square.stack.fill",
                description: "A multiline description about a feature paired with the image on the left."
            )
            
            FeatureCard(
                iconName: "quote.bubble.fill",
                description: "Short summary"
            )
            
            FeatureCard(
                iconName: "medal.star.fill",
                description: "Victory point"
            )
            
            FeatureCard(
                iconName: "dollarsign.circle.fill",
                description: "Money"
            )
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    FeaturesPage()
        .frame(maxHeight: .infinity)
        .background(Gradient(colors: gradientColors))
        .foregroundStyle(.white)
}
