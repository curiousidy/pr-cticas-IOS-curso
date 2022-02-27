//
//  DetalleLista.swift
//  Lista
//
//  Created by aaron lopez on 13/2/22.
//

import SwiftUI

struct DetalleLista: View {
    @State var contacto: Contacto
    

    var body: some View {
        VStack{
            HStack{
                Image(systemName: "person")
                Text(contacto.nombre)
            }
            HStack{
                Image(systemName: "phone")
                Text(contacto.telefono)
            }
            HStack{
                Image(systemName: "mail")
                Text(contacto.email)
            }
            HStack{
                Button("Llamar") {
                    contacto.llamar()
                }
                Button("Email", action: contacto.emailTo
                )
            }
        }
        
    }
}

struct DetalleLista_Previews: PreviewProvider {
    static var previews: some View {
        DetalleLista(contacto: Contacto(nombre:"pepe",telefono: "11111",email: "aaaa@aaa"))
    }
}
