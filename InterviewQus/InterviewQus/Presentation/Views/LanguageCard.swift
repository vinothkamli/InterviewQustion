//
//  LanguageCard.swift
//  InterviewQus
//
//  Created by TechnoTackle on 20/12/24.
//

import SwiftUI

struct LanguageCard: View {
    let language: Language

    var body: some View {
        VStack {
            Image(systemName: "laptopcomputer")
                .font(.largeTitle)
                .foregroundColor(.white)
            Text(language.name)
                .font(.headline)
                .foregroundColor(.white)
                .padding(.top, 5)
        }
        .padding()
        .frame(maxWidth: .infinity, minHeight: 120)
        .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(15)
        .shadow(color: .gray.opacity(0.5), radius: 5, x: 0, y: 5)
    }
}

