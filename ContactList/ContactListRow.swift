//
//  ContactRow.swift
//  ContactList
//
//  Created by Артем Черненко on 02.03.2022.
//

import SwiftUI

struct ContactListRow: View {
    @State private var isPresented = false
    let person: Person
    
    var body: some View {
        NavigationView {
            List {
                Image(systemName: person.picture)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .position(x: 130, y: 50)

                SectionSet(text: person.phone, icon: "phone")
                SectionSet(text: person.email, icon: "tray")
            }
            .navigationTitle("\(person.name) \(person.surname)")
        }
    }
}
    
//struct ContactRow_Previews: PreviewProvider {
//    static var previews: some View {
//        ContactListRow(person: Person.getPersons()[1])
//    }
//}
