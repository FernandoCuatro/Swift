//
//  Menu.swift
//  Parcial2
//
//  Created by Fernando Cuatro on 3/16/24.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        HStack {
            Image(systemName: "homekit")
                 .font(.system(size: 20))
                 .padding(.all, 8)
                 .background(morado)
                 .clipShape(Circle())
                .foregroundColor(.white)
            
            Spacer()
            
            Image(systemName: "chart.bar.xaxis")
                 .font(.system(size: 20))
                 .padding(.all, 8)
                 .background(morado)
                 .clipShape(Circle())
                .foregroundColor(.white)
            
            Spacer()
            
            Image(systemName: "a.book.closed")
                 .font(.system(size: 20))
                 .padding(.all, 8)
                 .background(morado)
                 .clipShape(Circle())
                .foregroundColor(.white)
            
            Spacer()
            
            Image(systemName: "circle")
                 .font(.system(size: 20))
                 .padding(.all, 8)
                 .background(morado)
                 .clipShape(Circle())
                .foregroundColor(.white)
            
            Spacer()
            
            Image(systemName: "magnifyingglass")
                 .font(.system(size: 20))
                 .padding(.all, 8)
                 .background(morado)
                 .clipShape(Circle())
                .foregroundColor(.white)
        }
        .padding()
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
