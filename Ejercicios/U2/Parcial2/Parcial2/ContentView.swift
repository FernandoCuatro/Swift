//
//  ContentView.swift
//  Parcial2
//
//  Created by Fernando Cuatro on 3/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Header()
            
            ScrollView {
                Contenido()
            }
            
            Menu()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
