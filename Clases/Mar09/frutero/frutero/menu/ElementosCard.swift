//
//  ElementosCard.swift
//  frutero
//
//  Created by Fernando Cuatro on 3/9/24.
//

import SwiftUI

struct ElementosCard: View {
    let imageNombre :String
    let frutaImage :String
    let titulo :String
    @State var escala:CGFloat = 1.0
    
    var body: some View {
        ZStack (alignment: .leading) {
            Image(frutaImage)
                .resizable()
                .scaledToFit()
                .frame(width:100, height: 170)
                .clipShape(RoundedRectangle(cornerRadius: 15.0))

            Text(titulo)
                .font(.system(size:12, weight:.semibold))
            
            Spacer()
        }.padding(8)
    }
}


struct ElementosCard_Previews: PreviewProvider {
    static var previews: some View {
        ElementosCard(
            imageNombre: "Fruta 1",
            frutaImage: "cereza",
            titulo: "Cereza"
        )
    }
}
