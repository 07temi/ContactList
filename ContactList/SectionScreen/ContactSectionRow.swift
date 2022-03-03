//
//  ContactDetailRow.swift
//  ContactList
//
//  Created by Артем Черненко on 02.03.2022.
//

import SwiftUI

struct ContactSectionRow: View {
    let person: Person
    
    var body: some View {
        Section(header: Text("\(person.fullName)")) {
            SectionSet(text: person.phone, icon: "phone")
            SectionSet(text: person.email, icon: "tray")
        }
    }
}

struct ContactDetailRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactSectionRow(person: Person.getPersons()[1])
    }
}
