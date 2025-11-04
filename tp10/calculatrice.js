function somme()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) + Number(b);
    document.getElementById("resultat").value = c;
}

function multiplier()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) * Number(b);
    document.getElementById("resultat").value = c;
}


function moin()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) - Number(b);
    document.getElementById("resultat").value = c;
}


function diviser()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) / Number(b);
    document.getElementById("resultat").value = c;
}


function parite()
{
    var x = document.getElementById("t2").value
    if(x % 2 == 0) {
        document.getElementById("paire").value = "Paire"
    }
    else {
        document.getElementById("paire").value = "Impaire"
    }

}


function permuter()
{
    var k = document.getElementById("t1").value;
    var f = document.getElementById("t2").value;
    var n = Number(0)
    n = f
    f = k
    k = n
    document.getElementById("t1").value = n   
    document.getElementById("t2").value = f



}

function supprimer()
{
    document.getElementById("t1").value = ""
    document.getElementById("t2").value = ""
    document.getElementById("paire").value = ""
    document.getElementById("resultat").value = ""

}
