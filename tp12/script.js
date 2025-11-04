function calcul_moyenne () {

var n1 = prompt ("Donner la 1ère note:");
var n2 = prompt ("Donner la 2ère note:");
var n3 = prompt ("Donner la 3ère note:");
 var somme = Number(n1) + Number(n2)+ Number(n3);

 document.write ("Voici la somme :" + somme + "<br>");
 var moyenne = somme/3;

 document.write ("Voici la moyenne :" + moyenne + "<br>");
 if (moyenne < 10) {
    document.write("Reboublant");
}
else if (moyenne < 12){
    document.write("Admis-Passable")

}

else if ( moyenne < 14) {
    document.write("Admis-Bien")
}
else {
    document.write("Admis-Très Bien")
}
}

function test_temperature() { 

    var temperature = prompt ("Saisir une température");
     document.write("Voici la température :" + temperature + "<br>");
     
  if(temperature<10)
    document.write("froid");
else if (temperature<25)
    document.write("Normale");
else if (temperature>25)
    document.write("Chaud")
}

function simple_affichage () {
    var n1 = prompt ("Donner le 1er nombre:");
var n2 = prompt ("Donner le 2ème nombre:");

if (n1>n2){
    document.write ("voici le plus grand nombre"+ " " + n1 + "<br>")
    document.write ("voici le plus petit nombre"+ " " + n2)
}
else{
    document.write ("voici le plus grand nombre"+ " " + n2 + "<br>")
    document.write ("voici le plus petit nombre"+ " " + n1)
}

}




