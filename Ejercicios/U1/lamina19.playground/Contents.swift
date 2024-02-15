import UIKit

// el for de toda la vida
let names = ["Swift", "UTEC", "ETPS4"]
for name in names {
    print("Hola, \(name)")
}

print("")
// hacemos el segundo
let namesWithNumber = [10: "Swift", 20: "UTEC", 30: "ETPS4"]
for (number, name) in namesWithNumber {
    print("Numero \(number) y el nombre \(name)")
}
