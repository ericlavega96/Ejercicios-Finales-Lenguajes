var num = prompt("Inserte la cantidad de sentencias ( 1 - 150 ): ");
var n = parseInt(num);
var x = 0;

while (n >= 1 && n <= 150) {

 var sentencia = prompt();

    if(sentencia.length > 3){
      console.log("Sentencia no valida");
      break;
    }

   if(sentencia === "X++"){
        x++;
        n--;

   }else if (sentencia === "++X"){
        x++
        n--;

   }else if (sentencia === "--X"){
        x--
        n--;

   }else if (sentencia === "X--"){
        x--
        n--;
   }
}

console.log(x);
  