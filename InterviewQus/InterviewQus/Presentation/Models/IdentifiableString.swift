//
//  IdentifiableString.swift
//  InterviewQus
//
//  Created by TechnoTackle on 17/12/24.
//

import Foundation

struct IdentifiableString: Identifiable {
    let id = UUID()
    let value: String
}
