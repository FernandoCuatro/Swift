//
//  ImageView.swift
//  SwiftUIFramework
//
//  Created by Fernando Cuatro on 3/4/24.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        // Se puede poner entrecomillas el nombre de la imagen
        // Image("messi") // crece a limites fuera del iphone
        
        // resizable se ajusta al tamanio de la pantalla pero se deforma
        // scaledToFill para que crezca lo maximo a lo alto
        // scaledToFit para que crezca lo maximo a lo ancho
        // Image("messi").resizable().scaledToFit()
        
        // pero tambien podemos trabajar con frime
        // en la que podemos colocar la altura el ancho y ese textazo
        // clipShape en este caso un circulo la imagen se ajusta a esa figura
        // hay que recordar la jerarquia de donde esta colocada cada propiedad
        // recordando que estamos programando de forma funcional que le aplicamos
        // funciones sobre una imagen
        // agregamos un margen interior como padding
        // overlay agrega la linea a la imagen como borde
        // shadow es para las sobras dandole un radio para difuminar y agregando color
        VStack {
            Image("messi").resizable()
                .padding(0)
                .frame(width: 300, height: 300, alignment: .center)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .shadow(color: Color.black, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .background(Color.white)
                .overlay(Circle().stroke(
                    Color.yellow,
                    lineWidth: 5
                    )
                )
            
            Spacer()
            
            // vamos a agregar un icono
            // Pero ahora con el constructor systemName
            Image(systemName: "airpods")
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.gray)
        }
            
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
