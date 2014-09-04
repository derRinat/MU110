// Playground - noun: a place where people can play

/**
* Task 1
*
* Написать в playground функцию, которая подсчитывает число Фибоначчи для
* получаемого аргумента N. Результатом выполнения должен быть возвращаемый кортеж
* с аргументом N и результатом. Выполнить для 10, результат вывести в консоль. 
*
* @author rinat.borovskikh
*/

func calcFib(n:Int) {
    
    func fib(n:Int) -> (Int, Int){
        
        var result = 0
        
        for var i=0, k=1, l=0; l<n; i=k, k=result, l++ {
            result = i+k
        }
        
        return (n, result)
    }
    
    for number in 0..<n {
        println(fib(number))
    }
}

let iterationCount = 10
calcFib(iterationCount)
