import UIKit

var nota1 = 9.5
var nota2 = 8.5
var nota3 = 7.5
var nota4 = 9.5
var nota5 = 8.5

// ojo con let, aqui el let no se cambia para nada
let promedio = (nota1 + nota2 + nota3 + nota4 + nota5) /  5;

if promedio >= 7 {
    print("Aprobadisimo")
} else {
    if promedio >= 4 {
        print("Regular")
    } else {
        print("Estas hundido")
    }
}
