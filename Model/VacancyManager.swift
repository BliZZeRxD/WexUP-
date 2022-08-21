//
//  VacanciManager.swift
//  DiplomaWexUp
//
//  Created by Ayan on 8/21/22.
//

import Foundation

struct VacGet{
    
    func takeVacancy(){
        let urlString = "http://wexup.kz:8000/api/vacancies/"
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error)
                return
            }
            guard let vacancyData = data else {return}
//            let jsonString = String(data: data, encoding: .utf8)
//            print(jsonString)
            do{
                let vacancy = try JSONDecoder().decode([VacancyData].self, from: vacancyData)
                print(vacancy.first?.wage as Any)
            }
            catch{
                print(error)
            }
        }.resume()
    }
}
