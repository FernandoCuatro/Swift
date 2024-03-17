//
//  Contenido.swift
//  Parcial2
//
//  Created by Fernando Cuatro on 3/16/24.
//

import SwiftUI

struct Contenido: View {
    var body: some View {
        
        ZStack {
            
            VStack {
                Text("Examen Practico")
                    .font(.largeTitle)
                
                RoundedRectangle(cornerRadius: 10) // Ajusta el radio de los bordes según sea necesario
                    .foregroundColor(oscuro)
                    .overlay(
                            HStack {
                                Image("messi")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .clipShape(Circle())
                                    .shadow(color: Color.black, radius: 10)
                                    .overlay(Circle().stroke(Color.white, lineWidth: 3))
                                    .padding()
                                
                                Text("Parcial II")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                
                                Spacer()
                            }
                            
                        )
                    .frame(width: 300, height: 100)
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 4, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, 10)
                
                RoundedRectangle(cornerRadius: 10) // Ajusta el radio de los bordes según sea necesario
                    .foregroundColor(oscuro)
                    .overlay(
                            HStack {
                                Image("messi")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .clipShape(Circle())
                                    .shadow(color: Color.black, radius: 10)
                                    .overlay(Circle().stroke(Color.white, lineWidth: 3))
                                    .padding()
                                
                                VStack {
                                    Text("Fernando Cuatro")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white)
                                        .padding(.bottom, 10)
                                    
                                    Text("25-0871-2020")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white)
                                }
                                
                                Spacer()
                            }
                            
                        )
                    .frame(width: 300, height: 100)
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 4, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, 10)
                    
                    RoundedRectangle(cornerRadius: 10) // Ajusta el radio de los bordes según sea necesario
                        .foregroundColor(oscuro)
                        .overlay(
                                HStack {
                                    Image("utec")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 80, height: 80)
                                        .clipShape(Circle())
                                        .shadow(color: Color.black, radius: 10)
                                        .overlay(Circle().stroke(Color.white, lineWidth: 3))
                                        .padding()
                                    
                                    Text("ETPS 4")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white)
                                    
                                    Spacer()
                                }
                                
                            )
                        .frame(width: 300, height: 100)
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 4, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                        
            }
            
            Spacer()
            
            HStack {
                ZStack {
                    Rectangle()
                        .foregroundColor(morado)
                    Circle()
                        .offset(x: 50)
                        .foregroundColor(morado)
                    
                    VStack {
                        Text("Ciclo 02")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("ETPS 4")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                    .foregroundColor(.white)
                    
                    
                }
                .scaledToFit()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                Image(systemName: "chart.bar.xaxis")
                     .font(.system(size: 50))
                     .padding(.all, 8)
                     .background(naranja)
                     .clipShape(Circle())
                    .foregroundColor(.white)
                    .padding()
            }
            .padding(.leading, 10)
            .padding(.trailing, 10)
            .padding(.top, 400)
            
            
        }
        
   
        

    }
}

struct Contenido_Previews: PreviewProvider {
    static var previews: some View {
        Contenido()
    }
}
