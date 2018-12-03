package main

import "fmt"
import "bufio"
import "strconv"
import "os"
import "time"

func main() {

  start := time.Now()

   exit := false
  for{
    scanner := bufio.NewScanner(os.Stdin)
    fmt.Println("Introduzca un número: ")
    scanner.Scan()

    if n,error := strconv.Atoi(scanner.Text()); error == nil{
      fmt.Println("El Fibonacci de " + strconv.Itoa(n)+" es " + strconv.Itoa(fib(n)))
      exit = true
    }else{
      fmt.Println("Debe de insertar un número")
    }
    if exit{
      break
    }
  }
elapsed:=time.Since(start)
fmt.Printf("Time : %s \n",elapsed)
}

func fib(n int) int{
  if n <= 1{
    return n
  }
  return fib(n - 1) + fib(n - 2)
}
