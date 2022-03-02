//
//  CintactListScreen.swift
//  ContactList
//
//  Created by Артем Черненко on 01.03.2022.
//

import SwiftUI

struct ContactListScreen: View {
    
    let contacts = Person.getPersons()
    
    var body: some View {
        NavigationView {
            List(contacts, id: \.id) { contact in
                ContactRow(person: contact)
//                Text("\(contact.name) \(contact.surname)")
            }
            .navigationTitle("Contacts")
        }
    }
}


struct CintactListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContactListScreen()
    }
}
