//
//  ContentView.swift
//  frutero
//
//  Created by Fernando Cuatro on 3/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            ScrollView {
                Header()
                Divider()
                
                ElementoFeed()
            }
            
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
