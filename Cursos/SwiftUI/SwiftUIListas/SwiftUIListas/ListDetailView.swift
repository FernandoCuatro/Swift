//
//  ListDetailView.swift
//  SwiftUIListas
//
//  Created by Fernando Cuatro on 3/12/24.
//

import SwiftUI

struct ListDetailView: View {
    var body: some View {
        // Creamos un VStack vertical
        // Tendremos una imagen
        // Y dos textos
        
        VStack {
            Image( systemName: "" )
                .resizable()
                .frame(width: 200, height: 200)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color.black, lineWidth: 4))
                .shadow(color: Color.gray, radius: 5)
            
            Text("Name").font(.largeTitle)
            Text("Languages").font(.title)
            
            Spacer()
        }
        
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView()
    }
}
