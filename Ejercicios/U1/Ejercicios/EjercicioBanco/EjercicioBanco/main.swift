//
//  main.swift
//  EjercicioBanco
//
//  Created by Fernando Cuatro on 2/14/24.
//  Copyright © 2024 Fernando Cuatro. All rights reserved.
//

import Foundation

// configuramos el tipo de dato para agrupar los valores y almacenarlos
struct CuentaCorriente {
    var numeroCuenta: Int
    var saldo: Double
}

// Inicializamos un array vacío para almacenar las cuentas corrientes
var cuentasCorrientes: [CuentaCorriente] = []

// Bucle para ingresar los datos de las cuentas corrientes
while true {
    print("Ingrese el número de cuenta:")
    guard let numeroCuenta = Int(readLine() ?? ""), numeroCuenta >= 0 else {
        print("Número de cuenta inválido. Finalizando ingreso de datos.")
        break
    }
    
    print("Ingrese el saldo actual:")
    guard let saldo = Double(readLine() ?? "") else {
        print("Saldo inválido. Inténtelo de nuevo.")
        continue
    }
    
    // Creamos una nueva cuenta corriente con los datos ingresados y la agregamos al array
    let nuevaCuenta = CuentaCorriente(numeroCuenta: numeroCuenta, saldo: saldo)
    cuentasCorrientes.append(nuevaCuenta)
}

// Iteramos sobre las cuentas corrientes para imprimir su estado
print("Estado de las cuentas corrientes:")
for cuenta in cuentasCorrientes {
    var estado: String
    if cuenta.saldo > 0 {
        estado = "Acreedor"
    } else if cuenta.saldo < 0 {
        estado = "Deudor"
    } else {
        estado = "Nulo"
    }
    print("Número de cuenta: \(cuenta.numeroCuenta), Estado: \(estado)")
}
