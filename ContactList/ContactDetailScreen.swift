//
//  ContactDetailScreen.swift
//  ContactList
//
//  Created by Артем Черненко on 01.03.2022.
//

import SwiftUI

struct ContactDetailScreen: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts, id: \.id) { contact in
                    ContactDetailRow(person: contact)
            }
            .listStyle(.inset)
            .navigationTitle("Contacts")
        }
    }
}

struct ContactDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailScreen(contacts: Person.getPersons())
    }
}
