//
//  Header.swift
//  frutero
//
//  Created by Fernando Cuatro on 3/9/24.
//

import SwiftUI

struct Header: View {
    var body: some View {
        
        HStack {
            Image( "tienda" )
            .resizable()
            .scaledToFit()
            .frame(width: 30, height: 30)
            
            Spacer()
            
            Image(systemName: "magnifyingglass")
                .font(.system(size: 18))
                .padding(.all, 8)
                .background(colorNaranja)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
           
            Image(systemName: "message")
                .font(.system(size: 18))
                .padding(.all, 8)
                .background(colorNaranja)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        }
        .padding(.horizontal)
        
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
