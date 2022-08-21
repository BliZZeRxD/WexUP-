//
//  VacanciesData.swift
//  DiplomaWexUp
//
//  Created by Ayan on 8/21/22.
//

import Foundation

struct VacancyData: Codable {
    let title: String
    let description: String
    let wage: String
    let duties: [String]
    let requirements: [String]
    let conditions: [String]
    let address: String?
    let company: String
    let students: [String]
}
