package main

import "fmt"
import "bufio"
import "strconv"
import "os"
import "time"

func main() {

  start := time.Now()

  scanner := bufio.NewScanner(os.Stdin)
  exit := false
  x := 0
  fmt.Println("Inserte la cantidad de sentencias ( 1 - 150 ):")
  scanner.Scan()
  
  if n,error := strconv.Atoi(scanner.Text()); error == nil{
    if n >= 1 && n <= 150{
      for{
        fmt.Println("Inserte la sentencia " + strconv.Itoa(n))
        scanner.Scan()
        sentencia := scanner.Text()
          if len(sentencia) == 3{
            switch sentencia{
              case "X++":
                x++
                n--
              case "++X":
                x++
                n--
              case "X--":
                x--
                n--
              case "--X":
                x--
                n--
              default:
                fmt.Println("Sentencia no válida")
            }

          }else{
            fmt.Println("Sentencia no válida")
          }
        if n == 0{
          fmt.Println("El resultado es: " + strconv.Itoa(x))
          exit = true
        }

        if(exit){
          break
        }
      }
    }else{
      fmt.Println("Por favor, inserte una cantidad de sentencias válida")
    }
  }else{
    fmt.Println("Por favor, introduzca un número")
  }
elapsed:=time.Since(start)
fmt.Printf("Time : %s \n",elapsed)
}
