//
//  ElementoFeed.swift
//  frutero
//
//  Created by Fernando Cuatro on 3/9/24.
//

import SwiftUI

struct ElementoFeed: View {
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators:false) {
            HStack {
                Elemento()
                
                ForEach(1..<6) {
                    i in
                    ElementosCard(imageNombre: "venta\(i)",
                        frutaImage: "comida\(i)",
                        titulo: titles[i-1])
                        .foregroundColor(.black)
                }
                .padding(.leading)
                .padding(.vertical, 5)
                
            }
        }
        
    }
}

struct ElementoFeed_Previews: PreviewProvider {
    static var previews: some View {
        ElementoFeed()
    }
}
