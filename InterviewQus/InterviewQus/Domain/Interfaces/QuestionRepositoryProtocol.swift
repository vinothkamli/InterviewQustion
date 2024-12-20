//
//  QuestionRepositoryProtocol.swift
//  InterviewQus
//
//  Created by TechnoTackle on 17/12/24.
//

import Foundation

protocol QuestionRepositoryProtocol {
    func fetchQuestions(for language: String) -> [Question]
}
