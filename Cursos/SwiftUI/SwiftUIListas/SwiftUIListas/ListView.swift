//
//  ListView.swift
//  SwiftUIListas
//
//  Created by Fernando Cuatro on 3/12/24.
//

import SwiftUI

// Tenemos que hacer cambios por los estados que pueden ser variables
// tenemos que conseguir que el valor favorito de un programador sea mutable
// para que cuando cambie su valor en una pantalla sea reflejado en la otra
// Creamos un modelo de dato
final class ProgrammersMoldelData: ObservableObject {
    // Con el publicher los publicamos y de let a var para que no sean constantes
    
    // Creamos una lista de programadores
    @Published var programmers = [
        Programmer(id: 0, name: "Fernando Cuatro", languages: "PHP, Js, C#, Java", avatar: Image(systemName: "person"), favorite: true),
        Programmer(id: 1, name: "Programador 1", languages: "PHP", avatar: Image(systemName: "person.fill"), favorite: false),
        Programmer(id: 2, name: "Programador 2", languages: "Js", avatar: Image(systemName: "person.fill"), favorite: false),
        Programmer(id: 3, name: "Programador 3", languages: "C#", avatar: Image(systemName: "person.fill"), favorite: false),
        Programmer(id: 4, name: "Programador 4", languages: "Java", avatar: Image(systemName: "person.fill"), favorite: false),
        Programmer(id: 5, name: "Programador 5", languages: "Imprementador", avatar: Image(systemName: "person.fill"), favorite: false)
    ]
}

struct ListView: View {
    // Para obtener la data
    @EnvironmentObject var programmersMoldelData: ProgrammersMoldelData
    
    // Implementamos un filtrado para la lista
    @State private var showFavorites = false
    // Esto sera un listado de programadores mas grande o mas pequenio
    // Si son los vaoritos o todos
    private var filteredProgrammers: [Programmer] {
        return programmersMoldelData.programmers.filter { programmer in
            return !showFavorites || programmer.favorite
        }
    }
        
    var body: some View {
        // Este componente permite que toda la pantalla
        // Tenga navegacion
        NavigationView {
            // Agregamos un interruptor
            VStack {
                Toggle(isOn: $showFavorites) {
                    Text("Mostrar favoritos")
                }.padding()
                
                // Para pintar una lista
                List (filteredProgrammers, id: \.id) {
                    // Vamos a usar el Navigation link
                    // Para irnos para otra pantalla
                    Programmer in
                    NavigationLink ( destination: ListDetailView(programmer: Programmer,
                                                                 favorite: $programmersMoldelData.programmers[Programmer.id].favorite ) ) {
                        RowView(programmer: Programmer)
                    }
                }
            }
            // Ahora demosle un titulo
            .navigationTitle("Programmers")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().environmentObject(ProgrammersMoldelData())
    }
}
