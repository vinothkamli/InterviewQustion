//
//  SplashView.swift
//  InterviewQus
//
//  Created by TechnoTackle on 17/12/24.
//

import SwiftUI

struct SplashView: View {
    @State private var isActive = false
    
    var body: some View {
        if isActive {
            HomeView(viewModel: HomeViewModel())
        } else {
            VStack {
                Text("Interview Questions")
                    .font(.largeTitle.bold())
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation {
                        isActive = true
                    }
                }
            }
        }
    }
}
