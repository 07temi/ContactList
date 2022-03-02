//
//  PersonsModel.swift
//  HW_2.7
//
//  Created by Артем Черненко on 29.12.2021.
//

import Foundation

struct Person {
    let id = UUID()
    let name: String
    let surname: String
    let email: String
    let phone: String
    let picture: String

}

extension Person {
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let pictures = "person.fill"
        
        let indexCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )
        
        for index in 0..<indexCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: phones[index],
                picture: pictures
            )
            
            persons.append(person)
        }
        return persons
    }
}
