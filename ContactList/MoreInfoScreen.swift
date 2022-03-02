//
//  MoreInfoScreen.swift
//  ContactList
//
//  Created by Артем Черненко on 01.03.2022.
//

import SwiftUI

struct MoreInfoScreen: View {
    @Binding var isPresented: Bool
    let contactList: Person
    
    var body: some View {
        Text("\(contactList.name)")
    }
}

//struct MoreInfoScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        MoreInfoScreen(contactList: )
//    }
//}
