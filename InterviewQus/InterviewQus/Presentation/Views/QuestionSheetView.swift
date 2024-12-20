//
//  QuestionSheetView.swift
//  InterviewQus
//
//  Created by TechnoTackle on 17/12/24.
//

import SwiftUI

struct QuestionSheetView: View {
    let language: String
    let questions: [Question]

    init(language: String, questions: [Question]) {
        self.language = language
        self.questions = questions
    }

    var body: some View {
        NavigationStack {
            List(questions) { question in
                VStack(alignment: .leading) {
                    Text(question.question)
                        .font(.headline)
                    Text(question.answer)
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
            }
            .navigationTitle("\(language) Questions")
        }
    }
}

