//
//  ContentView.swift
//  Youtube
//
//  Created by Fernando Cuatro on 3/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Header()
            
            Spacer()
            
            Footer()
                .padding(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11 Pro Max")
    }
}
