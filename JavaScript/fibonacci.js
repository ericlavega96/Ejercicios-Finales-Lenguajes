
//Llamada a la funcion
fib(5)


function fib(n){
    if(n <= 1){
        return 1;
    }
    return fib(n - 1) + fib(n - 2)
}