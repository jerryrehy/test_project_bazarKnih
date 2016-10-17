<!DOCTYPE html>
<html lang='cs'>
  <head>
    <title>E-Bazar knih</title>
    <meta charset='UTF-8'>
    <meta name='description' content='e-bazar knih'>
    <meta name='keywords' content='bazar'>
    <meta name='author' content='Ing. Jaroslav Řehák'>
    <meta name='robots' content='all'>
    <link href='/favicon.png' rel='shortcut icon' type='image/png'>
    <link rel="stylesheet" type="text/css" href="style.css">
    <script src="myscript.js" type="text/javascript"></script>
  </head>
  <body>
    <header>E-Bazar knih</header>
    <section>
        <?php
          if(isset($_GET['page'])){
              //Přihlášení do databáze mysql, která má název bazar
              $db = mysqli_connect("localhost","root","","bazar"); 
              //Nastavení kódování znaků, kvůli diakritice u češtiny
              mysqli_set_charset($db,"utf8");
              //Provedení dotazu na názvy knih v tabulce KNIHY
              
              $page = $_GET['page'];
              //kontrola existence proměnných
              if($page == "ukaz"){
                if(!isset($_GET['num'])){
                    $num = 0;    
                }else{
                    $num = $_GET['num'];
                }
                  
                if($num == '1'){
                    echo "<script> alert(\"Inzerát úspěšně vložen\") </script>";
                }
                  
                  
                  
                  //Provedení dotazu na výběr potřebných sloupců z tabulky INZERATY a KNIHY                
                  $result_a = mysqli_query(
                        $db,
                        "SELECT jmeno, email, cena, kniha, autor, vydavatelstvi, rok
                        FROM INZERATY, KNIHY
                        WHERE INZERATY.kniha = KNIHY.nazev"
                    );
                  $cislo = 0;
                  //výpis inzerátů z tabulky do html stránky
                  while ($inz = mysqli_fetch_row($result_a)){                      
                      $cislo+=1;
                      echo "<div class=\"inzeraty\">";
                      echo "<h1>Nabídka č. $cislo </h1>";
                      echo "<p>Jmeno: $inz[0]<br>
                              E-mail: $inz[1]<br>
                            Cena(Kč): $inz[2]<br>
                               Kniha: $inz[3]<br>
                               Autor: $inz[4]<br>
                       Vydavatelství: $inz[5]<br>
                                 Rok: $inz[6]</p>";
                      echo "</div>";
                                 
                  }
                  echo "<div id=\"zpet_ukaz\">";
                  echo "<a href=\"index.php\">Zpět</a>";
                  echo "</div>";         
              }
                               
              if($page == 'vloz'){
 
                  $result_b = mysqli_query($db,"SELECT NAZEV FROM KNIHY");
  
                  
                  echo "<form name=\"input\" action=\"insert.php\" onsubmit=\"return check()\" method=\"post\">";
                  echo "<h1>Vložit inzerát</h1>";
                  echo "<div id=\"iniciale\">";
                  echo "Jméno: <input id=\"jmeno\" type=\"text\" name=\"jmeno\">";
                  echo "<br>";
                  echo "E-mail: <input id=\"email\" type=\"text\" name=\"email\">";
                  echo "<br>";
                  echo "Cena: <input id=\"cena\" type=\"text\" name=\"cena\">";
                  echo "<br>";
                  echo "</div>";                  
                  echo "Kniha:<select name=\"kniha\">";
                  while ($knihy = mysqli_fetch_row($result_b)){    
                      echo "<option value=\"$knihy[0]\">";
                      echo "$knihy[0]";
                      echo "</option>";    
                  }       
                  echo "</select>";
                  echo "<br>";
                  echo "<input type=\"submit\" value=\"Vložit\">";
                  echo "</form>";
                  
                  echo "<div id=\"zpet_vloz\">";
                  echo "<a href=\"index.php\">Zpět</a>";
                  echo "</div>";   
              }
              mysqli_close($db);
          }else{
            echo "<div id=\"uvod\">";
            echo "<a href=\"index.php?page=ukaz\">Zobrazit inzeráty</a>";
            echo "<a href=\"index.php?page=vloz\">Přidat inzerát</a>";
            echo "</div>";
          }     
        ?>
    </section>
  </body>
</html>