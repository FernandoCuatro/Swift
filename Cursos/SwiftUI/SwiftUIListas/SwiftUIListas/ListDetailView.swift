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
            
            Text(programmer.name).font(.largeTitle)
            Text(programmer.languages).font(.title)
            
            Spacer()
        }
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(
            programmer: Programmer(id: 1, name: "Fernando Cuatro", languages: "PHP, Js, C#, Java", avatar: Image(systemName: "person.fill"), favorite: true)
        )
    }
}
