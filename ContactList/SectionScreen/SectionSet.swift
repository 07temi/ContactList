//
//  SectionSet.swift
//  ContactList
//
//  Created by Артем Черненко on 02.03.2022.
//

import SwiftUI

struct SectionSet: View {
    let text: String
    let icon: String
    
    var body: some View {
        Label(text, systemImage: icon)
    }
}

struct SectionSet_Previews: PreviewProvider {
    static var previews: some View {
        SectionSet(text: "preview", icon: "tray")
    }
}
