import UIKit

//funciones
func sayHello(){
    print("hello")
}

sayHello()


//funciones con parametros de entrada

func sayMyName(name:String){
    print("mi nombre es \(name)")
}
sayMyName(name:"idaira")

//funciones con parametros de entrada con mas parametros de entrada
func sayMyName(name:String, edad:Int){
    print("mi nombre es \(name) y mi edad es \(edad)")
}
sayMyName(name:"idaira",edad:32)

//funciones con un valor de retorno
func helloString()-> String{
    return "Hola"
}

print(helloString())
func sumTwoNumbers(firstNumber: Int, secondNumber: Int)->Int{
    return firstNumber + secondNumber
}

let myNewNumber = sumTwoNumbers(firstNumber: 5, secondNumber:2)
print(myNewNumber)
