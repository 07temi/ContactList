//
//  CintactListScreen.swift
//  ContactList
//
//  Created by Артем Черненко on 01.03.2022.
//

import SwiftUI

struct ContactListScreen: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts, id: \.id) { contact in
                NavigationLink("\(contact.name) \(contact.surname)") {
                    ContactListRow(person: contact)
                }
            }
            .listStyle(.inset)
            .navigationTitle("Contacts")
        }
    }
}


struct CintactListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContactListScreen(contacts: Person.getPersons())
    }
}
