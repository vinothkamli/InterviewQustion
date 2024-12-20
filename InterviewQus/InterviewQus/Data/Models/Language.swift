//
//  Language.swift
//  InterviewQus
//
//  Created by TechnoTackle on 17/12/24.
//

import Foundation

struct Language: Identifiable {
    let id: UUID
    let name: String
    var questions: [Question] // Each language has its own questions
}
