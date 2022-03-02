//
//  ContentView.swift
//  ContactList
//
//  Created by Артем Черненко on 01.03.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ContactListScreen()
                .tabItem {
                    Label("Contacts", systemImage: "person")
                }
            ContactDetailScreen()
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
