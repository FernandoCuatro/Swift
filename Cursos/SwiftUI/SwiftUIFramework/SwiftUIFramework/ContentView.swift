//
//  ContentView.swift
//  SwiftUIFramework
//  Created by Fernando Cuatro on 3/2/24.
//

import SwiftUI

// Esta es una vista
struct ContentView: View {
    // EL body siemore devuelve una vista
    var body: some View {
        // ESte es el vertical Stack
        // En los parentesis del Stack
        // podemos colocar la alineacion y el espacio
        // En un Stack solo se pueden devolver 10 vistas internas
        VStack (
            // El leading se alinea a la izquieda
            // El trailing es a la derecha
            // El center es el de toda la vida
            alignment: .leading,
            // Este es el espaciado entre cada uno de los textos
            spacing: 20 // el null aqui se llama nil
        ) {
            Text("Estamos probando este textazo")
                .font(.largeTitle)
                .padding()
            
            // Es importante tambien concer y saber como usar
            // los Spacer
            // Este empuja los elementos para que ocupen lo maximo posible
            Spacer()

            // El ZStack es para presentar profundidad
            // Es decir del fondo para enfrente
            // Y entre ellos se centra
            ZStack {
                Text("").frame(
                    maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, // El maximo de lo que puede utilizar
                    maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, // Ocupa el maximo posible
                    alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/
                )
                .background(Color.black)
                .padding()
                
                Text("").frame(
                    maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, // El maximo de lo que puede utilizar
                    maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, // Ocupa el maximo posible
                    alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/
                )
                .background(Color.red)
                .padding(40)
                
                Text("").frame(
                    maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, // El maximo de lo que puede utilizar
                    maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, // Ocupa el maximo posible
                    alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/
                )
                .background(Color.yellow)
                .padding(60)
                
                Text("").frame(
                    maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, // El maximo de lo que puede utilizar
                    maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, // Ocupa el maximo posible
                    alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/
                )
                .background(Color.green)
                .padding(80)
            }
            
            Spacer()
            
            // Este es para horizontal
            HStack {
                Text("Segunda linea").padding()
                Spacer()
                Text("Tercera linea").padding()
            }
        
        }.background(Color.yellow)
        // fin VStack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
