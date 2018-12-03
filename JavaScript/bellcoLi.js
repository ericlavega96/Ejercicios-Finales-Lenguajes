    console.time("Time : ") ;
    var a = prompt("Entre el primer #");
    var b = prompt("Segundo #");
    var c = prompt("Tercer  #");
    //Convertir a int
    var numa = parseInt(a);
    var numb = parseInt(b);
    var numc = parseInt(c);
    //Sumas
    var sum = numa + numb;
    var sum2 = numc + numb;
    //Resta
    var res = numa - numb;
    var res2 = numc - numb;
    var res3 = numc - numa;
    var res4 = numa - numc;
    //Multiplicacion
    var mult = numa * numb;
    var mult2 = numa * numc;
    var mult3 = numb * numc;
    //Division
    var div = numa / numb;
    var div2 = numa / numc;
    var div3 = numc / numb;
    var div4 = numc / numa;
    var div5 = numb / numa;
    var div6 = numb / numc;

   console.log("Su numero de tres digitos es " + a + " " + b + " " + c);

   if (sum == c) {

    console.log("Caso: " + a + " + " + b + " = " + c);

  }else if (sum2 == a) {

    console.log("Caso : "+ c +" + "+ b +" = " + a);

  }else if (res == c) {

    console.log("Caso : " + a + " - " + b + " = " + c);

  }else if (res2 == a) {

    console.log("Caso : "+ c + " - " + b + " = " + a);

  }else if (res3 == b) {

    console.log("Caso : "+ c + " - " + a + " = " + b);

  }else if (res4 == b) {

    console.log("Caso : "+ a + " - " + c + " = " + b);

  }else if (mult == c) {

    console.log("Caso : "+ a + " * " + b + " = " + c);

  }else if (mult2 == b) {

    console.log("Caso : "+ a + " * " + c + " = " + b);

  }else if (mult3 == a) {

    console.log("Caso : "+ b + " * " + c + " = " + a);

  }else if (div == c) {

    console.log("Caso : "+ a + " / " + b + " = " + c);

  }else if (div2 == b) {

    console.log("Caso : "+ a + " / " + c + " = " + b);

  }else if (div3 == a) {

    console.log("Caso : "+ c + " / " + b + " = " + a);

  }else if (div4 == b) {

    console.log("Caso : "+ c + " / " + a + " = " + b);

  }else if (div5 == c) {

    console.log("Caso : "+ b + " / " + a + " = " + c);

  }else if (div6 == a) {

    console.log("Caso : "+ b + " / " + c + " = " + a);

  }
console.timeEnd("Time : ") ;

