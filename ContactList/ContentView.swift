//
//  ContentView.swift
//  ContactList
//
//  Created by Артем Черненко on 01.03.2022.
//

import SwiftUI

struct ContentView: View {
    let contacts = Person.getPersons()
    
    var body: some View {
        TabView {
            ContactListScreen(contacts: contacts)
                .tabItem {
                    Label("Contacts", systemImage: "person")
                }
            ContactDetailScreen(contacts: contacts)
                .tabItem {
                    Label("Detail", systemImage: "person.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
