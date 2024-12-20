//
//  HomeView.swift
//  InterviewQus
//
//  Created by TechnoTackle on 17/12/24.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel: HomeViewModel
    @State private var selectedLanguage: Language?
    @State private var isSheetPresented = false
    @State private var questions: [Question] = []

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(viewModel.languages) { language in
                    Button {
                        selectedLanguage = language
                        loadQuestions(for: language.name)
                    } label: {
                        LanguageCard(language: language)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .padding()
        }
        .sheet(isPresented: $isSheetPresented) {
            if let selectedLanguage = selectedLanguage {
                QuestionSheetView(language: selectedLanguage.name, questions: questions)
            }
        }
    }

    private func loadQuestions(for language: String) {
        questions = LocalDataSource.fetchQuestions(for: language)
        isSheetPresented = true
    }
}

