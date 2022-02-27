import Foundation

protocol Polygon {
  func getArea(length: Int, breadth: Int)
}

// conform un protocolo indica que nuestra clase va implementar todas las funciones necesarias
class Rectangle: Polygon {
  func getArea(length: Int, breadth: Int) {
    print("Area of the rectangle:", length * breadth)
  }
}

var r1 = Rectangle()

r1.getArea(length:5, breadth: 6)



//Crea el protocolo Lista que:
// 1- tenga una funcion para devolver el numero de elementos de la lista
// 2- Tenga una función a la que se le pase un Int y devuelva una String con la cadena a mostrar
// 3- Tenga una función a la que se le pase un Int y Elimine esa posicion en los datos y devuelva verdadero si puedo eliminarlo
// 4- Una función que reciba una String y devuelva un Int con el número de resultados que encajen con la busqueda
protocol lista{
    func numList()->Int
    func mostrarCadena(index:Int)->String
    mutating func eliminarIndice(index:Int)->Bool
    func busqueda(lista:String)->Int
}

struct Contact:Equatable {
    var name: String = ""
    var phone: String = ""
    var email : String = ""
    var siEsFavorito : Bool = false
    func llamar(){
        print ("Llamando a \(name) \(phone)")
    }
    
    func emailTo(){
        print("Enviando a \(name) \(email)")
    }
}

struct agenda {
    var contactos: [Contact] = []
    
    mutating func addContact(anContact:Contact){
        contactos.append(anContact)
    }
    
    mutating func remove(aContact:Contact){
        for (index,c) in contactos.enumerated(){
            if c == aContact{
                contactos.remove(at: index)
            }
        }
    }
    
     func search(str:String)-> Contact?{
        for c in contactos{
            if c.name.contains(str){
                return c
            }
        }
         return nil
    }
}
extension agenda:lista{
    func numList() -> Int {
        return contactos.count
    }
    
    func mostrarCadena(index: Int) -> String {
        return contactos[index].name
    }
    
    func eliminarIndice(index: Int) -> Bool {
        return contactos.remove(at: contactos[index])
        return true
    }
    
    func busqueda(lista: String) -> Int {
        var cadena:String
    }
    
        
}

//: [Previous](@previous)
//: [Next](@next)

