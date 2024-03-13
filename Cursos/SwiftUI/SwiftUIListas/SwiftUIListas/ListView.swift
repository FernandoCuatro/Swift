//
//  ListView.swift
//  SwiftUIListas
//
//  Created by Fernando Cuatro on 3/12/24.
//

import SwiftUI

// Creamos una lista de programadores
private let programmers = [
    Programmer(id: 1, name: "Fernando Cuatro", languages: "PHP, Js, C#, Java", avatar: Image(systemName: "person.fill")),
    Programmer(id: 2, name: "Programador 1", languages: "PHP", avatar: Image(systemName: "person.fill")),
    Programmer(id: 3, name: "Programador 2", languages: "Js", avatar: Image(systemName: "person.fill")),
    Programmer(id: 4, name: "Programador 3", languages: "C#", avatar: Image(systemName: "person.fill")),
    Programmer(id: 5, name: "Programador 4", languages: "Java", avatar: Image(systemName: "person.fill")),
    Programmer(id: 6, name: "Programador 5", languages: "Imprementador", avatar: Image(systemName: "person.fill"))
]

struct ListView: View {
    var body: some View {
        // Este componente permite que toda la pantalla
        // Tenga navegacion
        NavigationView {
            // Para pintar una lista
            List (programmers, id: \.id) {
                // Vamos a usar el Navigation link
                // Para irnos para otra pantalla
                Programmer in
                NavigationLink ( destination: ListDetailView(programmer: Programmer) ) {
                    RowView(programmer: Programmer)
                }
            }
            // Ahora demosle un titulo
            .navigationTitle("Programmers")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
