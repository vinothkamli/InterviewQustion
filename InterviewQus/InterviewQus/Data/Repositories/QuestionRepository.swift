//
//  QuestionRepository.swift
//  InterviewQus
//
//  Created by TechnoTackle on 17/12/24.
//

import Foundation

class QuestionRepository: QuestionRepositoryProtocol {
    func fetchQuestions(for language: String) -> [Question] {
        return LocalDataSource.fetchQuestions(for: language)
    }
}
