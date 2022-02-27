//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//Identificar letras repetidas en un string

func reto1 (str: String) -> Bool {
    var letras_usadas: [Character] = []
    for letra in str{
        if letras_usadas.contains(letra) {
            return false
        }
        letras_usadas.append(letra)
    }
    return true
}
reto1(str: "holaa")

//palindromo
func palindromo (_ str:String) -> Bool{
    return (Array(str) == str.reversed())
}

palindromo("ana")

//Dos string con los mismos caracteres
func reto3 (_ str1:String,_ str2:String)->Bool{
    return caracterPalabra(str1) == caracterPalabra(str2)
}

func caracterPalabra(_ str:String)-> [Character]{
    var caracteres: [Character] = []
    for letra in str{
        if(!caracteres.contains(letra)){
            caracteres.append(letra)
        }
    }
    return caracteres.sorted()
}
reto3("saco","cosa")
reto3("casa","camion")
/*assert(reto3(str1: "saco", str2: "cosa") == true, "el reto 3 tiene un error")
assert(reto3(str1: "hola", str2: "hola") == true, "el reto 3 tiene un error")
assert(reto3(str1: "casa", str2: "camion") == false, "el reto 3 tiene un error")
assert(reto3(str1: "abc", str2: "cba") == true, "el reto 3 tiene un error")
assert(reto3(str1: "abca", str2: "cba") == false, "el reto 3 tiene un error")
assert(reto3(str1: "a", str2: "aa") == false, "el reto 3 tiene un error")*/
//: [Next](@next)


func exercise(){
    let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    var password = ""
    for _ in (1...6){
        if let checked = alphabet.randomElement(){
            password += checked
        }
    }
    print(password)
}
exercise()

// RETO 4: ¿Un string contiene a otro?
func stringContieneOtro(_ str1:String, _ str2:String)-> Bool{
    str1.uppercased().contains(str2.uppercased())
}
stringContieneOtro("tengo un tractor amarillo", "TractoR")

//Contar Letras diferentes en un String
func letrasDiferentes (_ str1:String)->Int{
    var letras_diferentes = [Character]()
    for letra in str1{
        if(!letras_diferentes.contains(letra)){
            letras_diferentes.append(letra)
        }
    }
   return letras_diferentes.count
}
letrasDiferentes("holaaai")



