 struct Fizzbuzz {
     
     func calcula(num:Int)->String {
         var fizz = ""
         for num in 1...100{
             if num % 3 == 0{
                fizz += "Fizz"
             }
             if num % 5 == 0{
                fizz += "Buzz"
             }
         }
         return fizz.isEmpty ? String(num) : fizz
     }
}

/*
Devuelve Fizz si el número es divisible por tres

Devuelve Buzz si el número es divisible por 5

Devuelve FizzBuzz si el número es dvisible por 3 y por 5
 
Para el resto de caso devuelve el número
 Otherwise, it returns the number.
 
 */
