//
//  Footer.swift
//  Youtube
//
//  Created by Fernando Cuatro on 3/23/24.
//

import SwiftUI

struct Footer: View {
    var body: some View {
        
        HStack {
            ZStack {
                Circle()
                    .fill(Color.red)
                    .cornerRadius(10)
                    .frame(width: 40, height: 40)
                    .shadow(radius: 50)
                
                Image(systemName: "house")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.white)
                    .frame(width: 20, height: 20)
            }
            
            Spacer()
            
            ZStack {
                Circle()
                    .fill(Color.red)
                    .cornerRadius(10)
                    .frame(width: 40, height: 40)
                    .shadow(radius: 50)
                
                Image(systemName: "house")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.white)
                    .frame(width: 20, height: 20)
            }
            
            Spacer()
            
            ZStack {
                Circle()
                    .fill(Color.red)
                    .cornerRadius(10)
                    .frame(width: 40, height: 40)
                    .shadow(radius: 50)
                
                Image(systemName: "house")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.white)
                    .frame(width: 20, height: 20)
            }
            
            Spacer()
            
            ZStack {
                Circle()
                    .fill(Color.red)
                    .cornerRadius(10)
                    .frame(width: 40, height: 40)
                    .shadow(radius: 50)
                
                Image(systemName: "house")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.white)
                    .frame(width: 20, height: 20)
            }
            
            Spacer()
            
            ZStack {
                Circle()
                    .fill(Color.red)
                    .cornerRadius(10)
                    .frame(width: 40, height: 40)
                    .shadow(radius: 50)
                
                Image(systemName: "house")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.white)
                    .frame(width: 20, height: 20)
            }
            
        }.padding(.horizontal)
        .background(Color.white)
        
    }
}


struct Footer_Previews: PreviewProvider {
    static var previews: some View {
        Footer()
    }
}
