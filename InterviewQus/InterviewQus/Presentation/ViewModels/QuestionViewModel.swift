//
//  QuestionViewModel.swift
//  InterviewQus
//
//  Created by TechnoTackle on 17/12/24.
//

import Foundation

class QuestionViewModel: ObservableObject {
    private let getQuestionsUseCase: GetQuestionsUseCase
    @Published var questions: [Question] = []
    
    init(getQuestionsUseCase: GetQuestionsUseCase) {
        self.getQuestionsUseCase = getQuestionsUseCase
    }
    
    func loadQuestions(for language: String) {
        questions = getQuestionsUseCase.execute(for: language)
    }
}
