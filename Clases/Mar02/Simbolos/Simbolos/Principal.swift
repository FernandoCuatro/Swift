//
//  Principal.swift
//  Simbolos
//
//  Created by Fernando Cuatro on 3/2/24.
//

import SwiftUI

struct Principal: View {
    var body: some View {
        
        VStack{
            Text("Bienvenido al sistema")
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            Text("Esta pantalla esta despues de la otra")
            
            Image(
                systemName: "person.crop.circle.badge.questionmark.ar"
            ).resizable()
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            
        }
        

        
        
    }
}

struct Principal_Previews: PreviewProvider {
    static var previews: some View {
        Principal()
    }
}
