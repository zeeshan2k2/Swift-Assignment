import UIKit



//What is the difference b/w two stride function overloads?

//Ans. There are two stride functions, one contains through and the other contains to
// the throught stride functions counts including the through value and the to stride function counts till the to value and excludes it

// write a loop that goes from 10.0 to 9.0, decrementing by 0.1

for index in stride(from: 10.0, through: 9.0, by: -0.1) {
        print(index)
}

print()

// is number divisiible
func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool {
    if number % divisor == 0 {
        return true
    }
    return false
}


print(isNumberDivisible(13, by: 4))

print()

//is number prime?

func isPrime(_ num: Int) -> Bool{
    
    if num < 2 {
        return false
    } else if num == 2 {
        return true
    } else {
        for i in 1...(num/2) {
            if num % (i+1) == 0 {
                return false
            }
        }
    }
    return true
}

print("Number is prime: ", isPrime(6))
print("Number is prime: ", isPrime(13))
print("Number is prime: ", isPrime(8893))




