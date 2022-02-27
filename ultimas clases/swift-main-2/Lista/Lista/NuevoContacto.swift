//
//  NuevoContacto.swift
//  Lista
//
//  Created by aaron lopez on 13/2/22.
//

import SwiftUI

struct NuevoContacto: View {
    @ObservedObject var agenda: Agenda
    @Environment(\.dismiss) var dismiss
    @State var name:String = ""
    @State var phone:String = ""
    @State var email:String = ""
    @State var isFavourite:Bool = false
    
    var body: some View {
        Form{
            TextField("Nombre", text: $name)
            TextField("telefono", text: $phone)
            TextField("email", text: $email)
            Toggle("Toggle",isOn: $isFavourite)
        
        Button("Add") {
            agenda.add(anContact: Contacto(id: UUID(), nombre: name, telefono: phone, isFavourite: isFavourite, email: email))
            dismiss()
        }
    }
    }
}

struct NuevoContacto_Previews: PreviewProvider {
    static var previews: some View {
        NuevoContacto(agenda: Agenda(withData: true))
    }
}


