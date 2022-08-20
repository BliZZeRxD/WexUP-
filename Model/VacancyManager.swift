////
////  VacanciManager.swift
////  DiplomaWexUp
////
////  Created by Ayan on 8/21/22.
////
//
//import Foundation
//
//protocol VacancyManagerDelegate {
//    
//}
//
//struct VacancyManager{
//    
//    var delegate: VacancyManagerDelegate?
//    
//    let vacancyURL = "http://wexup.kz:8000/api/vacancies/"
//    func performRequest(){
//        let url = URL(string: vacancyURL)
//        guard url != nil else{
//            return
//        }
//        let session = URLSession.shared
//        let dataTask = session.dataTask(with: url!) { data, response, error in
//            if error == nil && data != nil{
//                let decoder = JSONDecoder()
//                    do {
//                        let vacancyData = try
//                        decoder.decode(VacancyData.self, from: data!)
//                        print(vacancyData)
//                    }
//                    catch{
//                        print("Error!!!!!!!!!")
//                    }
//            }
//        }
//        dataTask.resume()
//    }
//}
