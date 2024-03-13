//
//  RowView.swift
//  SwiftUIListas
//
//  Created by Fernando Cuatro on 3/12/24.
//

import SwiftUI

struct RowView: View {
    var programmer: Programmer
    
    var body: some View {
        // Creamos una vista horizontal
        HStack {
            // Cuando ya tenemos un programador
            // Asociado a la vista RowView(programmer:
            // Seguimos contruyendo
            programmer.avatar
                .resizable()
                .frame(width: 40, height: 40, alignment: .center)
                .padding(10)
            
            // Es decir a nuestra izquierda con el leading
            VStack (alignment: .leading) {
                Text(programmer.name)
                    .font(.title)
                Text(programmer.languages)
                    .font(.subheadline)
            }
            
            Spacer()
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        // Tenemos que crear un objeto de tipo Programmer
        RowView(programmer:
            Programmer(id: 1,
                       name: "Fernando Cuatro",
                       languages: "PHP, Js, Java, C#, Swift",
                       avatar: Image(systemName: "person.fill")
                       )
            )
    }
}
