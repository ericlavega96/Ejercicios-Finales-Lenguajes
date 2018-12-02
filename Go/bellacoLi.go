package main

import "fmt"
import "strings"
import "bufio"
import "strconv"
import "os"

func main(){

fmt.Println("Introduzca su ecuacion de 3 enteros")

scan := bufio.NewScanner(os.Stdin)

   var linea string

   scan.Scan()
   linea = scan.Text()
   espacio := strings.Split(linea, " ")
   n := make([]int, len(espacio))

//Convertir string a int

   for i := range n {
        n[i], _ = strconv.Atoi(espacio[i])
   }
    a,b,c := n[0],n[1],n[2]

//Suma

    if a+b==c{

        fmt.Println("Caso : ", a," + ",b," = ",c)

    }else if c+b==a{

        fmt.Println("Caso : ",c," + ",b," = ",a)

//Resta

    }else if a-b==c{

        fmt.Println("Caso : ",a," - ",b," = ",c)

    }else if c-b==a{

        fmt.Println("Caso : ",c," - ",b," = ",a)

    }else if c-a==b{

        fmt.Println("Caso : ",c," - ",a," = ",b)

    }else if a-c==b{

        fmt.Println("Caso : ",a," - ",c," = ",b)
      
//Multiplicacion

    }else if a*b==c{

        fmt.Println("Caso : ",a," * ",b," = ",c)

    }else if b*c==a{

        fmt.Println("Caso : ",b," * ",c," = ",a)

    }else if a*c==b{

        fmt.Println("Caso : ",a," * ",c," = ",b)


//Division

    }else if a/b==c{

        fmt.Println("Caso : ",a," / ",b," = ",c)

    }else if a/c==b{
      
        fmt.Println("Caso : ",a," / ",c," = ",b)

    }else if c/b==a{
      
        fmt.Println("Caso : ",c," / ",b," = ",c)

    }else if c/a==b{
      
        fmt.Println("Caso : ",c," / ",a," = ",b)

    }else if b/a==c{
      
        fmt.Println("Caso : ",b," / ",a," = ",c)

    }else if b/c==a{
      
        fmt.Println("Caso : ",b," / ",c," = ",a)
    }
  
}
