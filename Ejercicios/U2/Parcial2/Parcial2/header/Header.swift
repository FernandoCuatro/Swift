//
//  Header.swift
//  Parcial2
//
//  Created by Fernando Cuatro on 3/16/24.
//

import SwiftUI

struct Header: View {
    @State var texto = ""
    
    var body: some View {
        
        HStack {
            // La imagen de toda la vida
            Image("utec")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
        
            // El textfield
            TextField("Escribe", text: $texto)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)
                .padding(.horizontal)
                .textContentType(.oneTimeCode)
            
            Button(action: {
                // Acción que se ejecutará cuando se haga clic en la imagen
                print("Texto ingresado: \(texto)")
                print("parcial resuelto - 2508712020 🏆")
            }) {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 18))
                    .padding(.all, 8)
                    .background(naranja)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 3, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
  
            }
            .foregroundColor(.black)
            
            Image(systemName: "message")
                .font(.system(size: 18))
                .padding(.all, 8)
                .background(naranja)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        }
        .padding()
        
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
