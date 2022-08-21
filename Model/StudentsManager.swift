//
//  StudentsManager.swift
//  DiplomaWexUp
//
//  Created by Ayan on 8/21/22.
//

import Foundation

struct StudGet{
    func takeStudentEmail(){
        let urlstring = "http://wexup.kz:8000/api/users/students/"
        guard let url = URL(string: urlstring) else {return}
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error{
                print(error)
                return
            }
            guard let studentData = data else {return}
            do{
                let student = try JSONDecoder().decode([StudentsData].self, from: studentData)
                let email = (student.first?.email ?? "Not String") as String
                print(email)
                //print(student.first!.email as Any)
            }
            catch{
                print(error)
            }
        }.resume()
    }
    func takeStudentPassword(){
        let urlstring = "http://wexup.kz:8000/api/users/students/"
        guard let url = URL(string: urlstring) else {return}
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error{
                print(error)
                return
            }
            guard let studentData = data else {return}
            do{
                let student = try JSONDecoder().decode([StudentsData].self, from: studentData)
                print(student.first?.password as Any)
                
            }
            catch{
                print(error)
            }
        }.resume()
    }
}
    
