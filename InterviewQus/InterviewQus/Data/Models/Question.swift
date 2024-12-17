//
//  Question.swift
//  InterviewQus
//
//  Created by TechnoTackle on 17/12/24.
//

import Foundation

struct qustions: Identifiable, Codable {
    let id: UUID
    let question: String
    let answer: String
}
