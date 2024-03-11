//
//  Elemento.swift
//  frutero
//
//  Created by Fernando Cuatro on 3/9/24.
//

import SwiftUI

struct Elemento: View {
    var body: some View {
        
        ZStack (alignment: .top) {
            
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 100, height: 170)
                .foregroundColor(colorNaranja)
                
            ZStack (alignment: .bottom) {
                Image("profile")
                    .resizable()
                    .scaledToFit()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 110)
                    .clipShape(RoundedRectangle(cornerRadius: 15.0))
                
                VStack (spacing: 0) {
                    Image(systemName: "plus")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .background(Color.red)
                        .padding(5)
                        .clipShape(Circle())
                        .overlay(Circle()
                                    .stroke(Color.red, lineWidth: 3))
                    Group {
                        Text("Agregar")
                        Text("Producto")
                    }
                    .font(.system(size: 12, weight: .bold))
                    .foregroundColor(.black)
                    .shadow(radius: 15)
                    
                }
            }
            
        }
        
    }
}

struct Elemento_Previews: PreviewProvider {
    static var previews: some View {
        Elemento()
    }
}
