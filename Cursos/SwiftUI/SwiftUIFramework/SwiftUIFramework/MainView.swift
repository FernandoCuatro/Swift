//
//  MainView.swift
//  SwiftUIFramework
//
//  Created by Fernando Cuatro on 3/12/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        // Ocupamos VStack para agrupar las vistas
        // Es decir que se muestren hacia abajo
        // Pero antes lo metemos en un ScrollView para que puedan caber
        ScrollView {
            VStack {
                // Primero el mapa
                MapView().frame(height:400)
                // La imagen y el SF Symbols
                // con el offset ponemos el disenio por encima del otro
                ImageView().offset(y: -150)
                
                // Se le puede agregar esto para que se separe
                Divider().padding()
                
                // El contenido de las figuras
                ContentView()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
