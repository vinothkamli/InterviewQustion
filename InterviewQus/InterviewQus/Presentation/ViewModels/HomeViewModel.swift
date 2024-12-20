//
//  HomeViewModel.swift
//  InterviewQus
//
//  Created by TechnoTackle on 17/12/24.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var languages: [Language] = []
    
    init() {
        loadLanguages()
    }
    
    private func loadLanguages() {
        // Populate languages with their respective questions
        self.languages = [
            Language(id: UUID(), name: "Swift", questions: LocalDataSource.fetchQuestions(for: "Swift")),
            Language(id: UUID(), name: "Kotlin", questions: LocalDataSource.fetchQuestions(for: "Kotlin")),
            Language(id: UUID(), name: "Java", questions: LocalDataSource.fetchQuestions(for: "Java"))
        ]
    }
}
