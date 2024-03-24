//
//  Header.swift
//  Youtube
//
//  Created by Fernando Cuatro on 3/23/24.
//

import SwiftUI

struct Header: View {
    @State var busqueda = ""
    var body: some View {
        HStack {
            Image("formula1")
                .resizable()
                .scaledToFit()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50)
            
            Spacer()
            
            TextField (" Buscar", text:$busqueda)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .cornerRadius(30)
                .frame(width: 120, height: 35)
                .background(Color.gray
                                .opacity(0.1))
            
            ZStack {
                Circle()
                    .fill(Color.red)
                    .cornerRadius(10)
                    .frame(width: 40, height: 40)
                    .shadow(radius: 50)
                
                Image(systemName: "video")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.white)
                    .frame(width: 20, height: 20)
            }
            
            ZStack {
                Circle()
                    .fill(Color.red)
                    .cornerRadius(10)
                    .frame(width: 40, height: 40)
                    .shadow(radius: 50)
                
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.white)
                    .frame(width: 20, height: 20)
            }
            
            
            
        }.padding(.horizontal)
        
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
            .previewDevice("iPhone 11")
    }
}
