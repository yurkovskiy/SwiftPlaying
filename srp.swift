func showFibo(_ n:Int) {
    if (n <= 0) {
        print("Error using function")
    }
    else {
        var fibo = [1, 1]
        for i in 2..<n {
            let newNumber = fibo[i - 1] + fibo[i - 2]
            fibo.append(newNumber)
        }
        // showing fibo
        for i in 0..<n {
            if fibo[i] % 2 != 0 {
                print(fibo[i])
            }
        }
    }
}
showFibo(10)