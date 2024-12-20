//
//  LocalDataSource.swift
//  InterviewQus
//
//  Created by TechnoTackle on 17/12/24.
//

import Foundation

class LocalDataSource {
    static func fetchQuestions(for language: String) -> [Question] {
        switch language {
        case "Swift":
            return [
                Question(id: UUID(), question: "What is Swift?", answer: "A programming language by Apple."),
                Question(id: UUID(), question: "What is Codable?", answer: "A protocol for encoding and decoding.")
            ]
        case "Kotlin":
            return [
                Question(id: UUID(), question: "What is Kotlin?", answer: "A programming language for Android development."),
                Question(id: UUID(), question: "What is Coroutines?", answer: "A feature for asynchronous programming.")
            ]
        case "Java":
            return [
                Question(id: UUID(), question: "What is Java?", answer: "A general-purpose programming language."),
                Question(id: UUID(), question: "What is JVM?", answer: "Java Virtual Machine.")
            ]
        default:
            return []
        }
    }
}
