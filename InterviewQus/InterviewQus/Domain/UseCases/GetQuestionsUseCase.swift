//
//  GetQuestionsUseCase.swift
//  InterviewQus
//
//  Created by TechnoTackle on 17/12/24.
//

import Foundation

class GetQuestionsUseCase {
    private let repository: QuestionRepositoryProtocol
    
    init(repository: QuestionRepositoryProtocol) {
        self.repository = repository
    }
    
    func execute(for language: String) -> [Question] {
        return repository.fetchQuestions(for: language)
    }
}
