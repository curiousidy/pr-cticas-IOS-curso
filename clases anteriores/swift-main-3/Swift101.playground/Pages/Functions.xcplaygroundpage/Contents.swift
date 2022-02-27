/*:
 # Functions
 Por fin llegamos a lo divertido, ya podemos crear funciones para separar nuestra lógica y hacer cosas divertidas con nuestro código
 
 */

//estructura

func helloWorld(){
    print("Hello Word")
}

//helloWorld()
//las funciones pueden devolver valores



func helloWorldWithValue() -> String{
     return "Hello Word"
}

//Cambia el nombre de la funcion helloWorldWithValue y llamala helloWorld
//Que sucede? Por qué?indica que es ambiguo porque estás utilizando 2 funciones que devuelven valores diferentes
//let hello: String = helloWorld()

//Añadiendo parametros
func hello(name:String = "World") -> String{
        return "Hello \(name)"
}

hello()
hello(name: "Aarón")

//las Strings se pasan por valor

var name = "Peter"
func reapeatString( name: String)->String{
    //name = nasme + "Parker"
    return name + "Parker"
}

name=reapeatString(name:name+"parker")
print(name)

//pero las colleciones se pasan por referencia
var names = ["Peter"]
func reapeatStringArray(_ name:[String]){
    names += ["Parker"]
}

reapeatStringArray(names)
reapeatStringArray(names)
//print(names)
names

//pero existe el parametro inout que podemos poner, que os voy a explicar ahora y lo vais a olvidar según termine



//usar funciones como parametros
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)

// Closures
let addTwoIntsClosure = {(_ a: Int, _ b: Int) -> Int in
    return a + b
}
print(addTwoIntsClosure(2,4))

//Podemos tener la tentación de decir que los closures son como funcines pero en realdiad es justo alreves, las funciones son Closures con azucar sintactico

//Ejercicio
// Creamos una agenda (array, diccionario, set,...) que tenga nombre y telefono,
var agenda : [String:String] = [:]
// Crea una funcion para agregar nuevos contactos,
func addContactToAgenda(name:String,phone:String){
    agenda[name] = phone
}
addContactToAgenda(name: "chaser", phone: "12345678")
addContactToAgenda(name: "idaira", phone: "45245635")
agenda
// para comprobar si un contacto está en la agenda
func isContactExists(name:String)->Bool{
    return (agenda[name] != nil) ? true : false
}
isContactExists(name: "idaira")
// una funcion para "llamar a un contacto que pasado un nombre imprima su telefono por pantalla"
func callContact(name:String){
    (agenda[name] != nil)
        ? print("riiiiiiiin \(agenda[name])")
        : print("apagado o fuera de cobertura")
}
callContact(name: "chaser")
//Crea una pila y una cola
//Crea una lista de la compra
var shopList : [String:String] = [:]
//una funcion para agregar elementos, otra para quitarlos, un buscador, y un agregador de todos los ingredientes de una receta
func addShopList(name:String,quantity:String = ""){
    shopList[name] = quantity
}
addShopList(name: "casneh")
shopList.removeValue(forKey: "casneh")
shopList


// Permite añadir la cantidad a la lista de la compra de cada articulo

//: [Previous](@previous)
//: [Next](@next)
