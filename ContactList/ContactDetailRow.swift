//
//  ContactDetailRow.swift
//  ContactList
//
//  Created by Артем Черненко on 02.03.2022.
//

import SwiftUI

struct ContactDetailRow: View {
    let person: Person
    
    var body: some View {
        Section(header: Text("\(person.name) \(person.surname)")) {
            SectionRow(text: person.phone, icon: "phone")
            SectionRow(text: person.email, icon: "tray")
        }
    }
}

extension ContactDetailRow {
    struct SectionRow: View {
        let text: String
        let icon: String
        
        var body: some View {
            HStack {
                Image(systemName: icon)
                    .foregroundColor(.blue)
                Text(text)
            }
        }
    }
}

struct ContactDetailRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailRow(person: Person.getPersons()[1])
    }
}
