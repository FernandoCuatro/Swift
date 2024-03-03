//
//  ContentView.swift
//  Simbolos
//
//  Created by Fernando Cuatro on 3/2/24.
//

import SwiftUI

struct ContentView: View {
    @State var username: String = ""
    
    var body: some View {
        VStack {
            Image(systemName:
                "moon.circle.fill")
                .resizable()
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            Label(
                "Que asco das IOS",
                systemImage: "moon.circle.fill"
            )
            
            Text("Usuario: ")
                .padding(.top, 10.0)
                .font(.largeTitle)
                // .rotation3DEffect(
                //    .degrees(60),
                //    axis: (x: 1, y: 0, x: 0)
                // )
            
            Text("Password: ")
            
            Text(Date(), style: .date)
                .padding(.top, 10.0)
            Text(Date(), style: .time)
            Text(Date(), style: .relative)
            Text(Date(), style: .timer)
            
            Button(action: {
                print("Ojala hubieran dado Pyhton")
                 Principal()
            }, label: {
                Text("IOS asqueroso")
            })
            .padding(.top, 10.0)
            
            TextField("👤 Usuario", text: $username)
                .padding(.horizontal, 10.0)
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
