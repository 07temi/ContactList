//
//  ContentView.swift
//  ContactList
//
//  Created by Артем Черненко on 01.03.2022.
//

import SwiftUI

struct ContentView: View {
    let contacts = Person.getPersons()
    
//    никак не получилось поднять на вьюшке ContactListRow
//    к верхнему краю экрана, как только не пробовал.
//    и подвинуть Image без хардкода
    
    var body: some View {
        TabView {
            ContactListScreen(contacts: contacts)
                .tabItem {
                    Label("Contacts", systemImage: "person")
                }
            ContactSectionScreen(contacts: contacts)
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
