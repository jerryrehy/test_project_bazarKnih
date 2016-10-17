// Funkce pro kontrolu prázdných polí
function check(){
    //Naplnění proměnných hodnotami z polí formuláře
    var name = document.getElementById('jmeno').value;
    var mail = document.getElementById('email').value;
    var price = document.getElementById('cena').value;
    
    if(name == null || name == ""){
        alert("Vyplňte jméno!");
        return false;    
    }
    else if(mail == null || mail == ""){
        alert("Vyplňte e-mail!");
        return false;    
    }
    else if(price == null || price == ""){
        alert("Vyplňte cenu!");
        return false;    
    }
    else return true;
}