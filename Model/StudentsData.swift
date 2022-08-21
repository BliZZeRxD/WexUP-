//
//  StudentsData.swift
//  DiplomaWexUp
//
//  Created by Ayan on 8/21/22.
//

import Foundation

struct StudentsData: Codable {
    let email: String
    let password: String
    let first_name: String
    let second_name: String
    let role: String
    let date_joined: String
    let university: String?
    let city: String
    let study_period: String
    let specialty: String
    let gender: String
}
