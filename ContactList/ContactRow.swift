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
        VStack {
            Text("\(person.name) \(person.surname)")
                .font(.largeTitle)
               // .padding()
            List {
                Image(systemName: person.picture)
                    .resizable()
                    .frame(width: 100, height: 100)
                Text("\(person.phone)")
            }
        }

        
//        Button(action: { isPresented.toggle() }) {
//            HStack {
//                Text("\(person.name) \(person.surname)")
//                    .frame(width: 200, alignment: .leading)
//            }
//        }
        
//        .fullScreenCover(isPresented: $isPresented) {
//            MoreInfoScreen(isPresented: $isPresented, contactList: person)
        }
        
    }



struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(person: Person.getPersons()[1])
    }
}

