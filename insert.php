<meta charset='UTF-8'>
<?php
    //přenos hodnot z formuláře poocí metody POST
    $name = $_POST["jmeno"];
    $email = $_POST["email"];
    $cena = $_POST["cena"];
    $book = $_POST["kniha"];
    
    //připojení k databázi nazvané bazar
    $db = mysqli_connect("localhost","root","","bazar"); 
    mysqli_set_charset($db,"utf8");
    
    //vložení dat do tabulky inzeráty
    if(!(mysqli_query($db,"INSERT INTO inzeraty (jmeno, email, cena, kniha) VALUES ('$name', '$email', '$cena', '$book')"))){
        echo "ERROR WHILE WRITING INTO TABLE";
    }else{
        //přesměrování na stránku vypsaných inzerátů včetně signalizace správnosti vložení
        header('Location: index.php?page=ukaz&num=1');
    }
?>