//
//  ListDetailView.swift
//  SwiftUIListas
//
//  Created by Fernando Cuatro on 3/12/24.
//

import SwiftUI

struct ListDetailView: View {
    // Con esta variable recogemos los datos
    // para mostrarlos en los detalles
    // recibimos un tipo objeto
    var programmer: Programmer
    
    // Creamos una varibale para indentificar si el prgroamador
    // es favorito o no
    // Se usa el State porque puede mutar
    // Aqui usamos el Binding porque es un variable que a llegado desde otra clase
    // a esta y puede ser modificada
    @Binding var favorite: Bool
    
    var body: some View {
        // Creamos un VStack vertical
        // Tendremos una imagen
        // Y dos textos
        VStack {
            programmer.avatar
                .resizable()
                .frame(width: 200, height: 200)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color.black, lineWidth: 4))
                .shadow(color: Color.gray, radius: 5)
            
            // Vamos a agregar la estrellita
            // Lo metemos en un HStack para que funcione
            HStack {
                Text(programmer.name).font(.largeTitle)
                
                // El boton lo creamos de esta forma
                // Para poder aniadierle una accion
                Button {
                    // Con esto cambiamos el valor
                    favorite.toggle()
                } label: {
                    // Pintamos la estrella si es favorito o no
                    if favorite {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    } else {
                        Image(systemName: "star")
                            .foregroundColor(.black)
                    }
                }
            }
            
            Text(programmer.languages).font(.title)
            
            Spacer()
        }
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(
            programmer: Programmer(id: 1, name: "Fernando Cuatro", languages: "PHP, Js, C#, Java", avatar: Image(systemName: "person.fill"), favorite: true),
            favorite: .constant(false)
        )
    }
}
