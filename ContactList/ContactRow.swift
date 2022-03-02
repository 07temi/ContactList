//
//  ContactRow.swift
//  ContactList
//
//  Created by Артем Черненко on 02.03.2022.
//

import SwiftUI

struct ContactRow: View {
    @State private var isPresented = false
    let person: Person
    
    var body: some View {
        Button(action: { isPresented.toggle() }) {
            HStack {
                Text("\(person.name) \(person.surname)")
                    .frame(width: 200, alignment: .leading)
            }
        }
        .sheet(isPresented: $isPresented) {
            MoreInfoScreen(isPresented: $isPresented, contactList: person)
        }
    }
}


//struct ContactRow_Previews: PreviewProvider {
//    static var previews: some View {
//        ContactRow()
//    }
//}
