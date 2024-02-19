//
//  Superheroe.swift
//  Ejercicio4
//
//  Created by Fernando Cuatro on 2/17/24.
//  Copyright © 2024 Fernando Cuatro. All rights reserved.
//

import Foundation

/*
 Figuras de Superhéroes Se pide realizar una aplicación para una empresa que vende figuras de
 superhéroes. Para ello, tendrá que modelar todos los datos relativos a estas figuras. Se pide que
 programe las siguientes clases: Clase Superhéroe Esta clase definirá las características de un
 superhéroe, Sus propiedades serán:
 • Nombre (nombre del superhéroe)
 • Descripción (cadena para describir brevemente su aspecto)
 • Capa (booleano que indica si el superhéroe lleva o no capa)
 Constructores Haga un constructor con parámetros que reciba solo el nombre del superhéroe. La
 descripción se inicializará a vacío (cadena vacía) y la capa se inicializará al valor false (sin capa)
*/

class Superheroe {
    var nombre:String
    var descripcion:String
    var capa:Bool
    
    init(_ nombre:String) {
        self.nombre = nombre
        self.descripcion = ""
        self.capa = false
    }
    
    public func verSuperheroe() -> String {
        return "Nombre: \(nombre), Descripcion: \(descripcion), Capa: \(capa)"
    }
}
