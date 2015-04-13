<?php

require 'function.php';
connectSQL();

if (isset($_GET['movie'])) {
    $id = $_GET['movie'];
    $dotaz = 'SELECT `program`.`id`, `program`.`name`, `program`.`picture`, `program`.`description`, `program`.`theater`, `program`.`remainingSeets`, `program`.`price`, `program`.`lenght`, `program`.`time`, `theater`.`id` AS `theaterID`, `theater`.`label`, `theater`.`seets` FROM `program`, `theater` WHERE `program`.`theater` = `theater`.`id` AND `program`.`id` = '.$id.'';
    $vysledek = mysql_query($dotaz);
    $zaznam = mysql_fetch_assoc($vysledek);

    $s = htmlHeader('Cinema Dream - '.$zaznam["name"].'','<link rel="stylesheet" type="text/css" href="css/detail.css">');
    $s .= '
<div id="program">
    <div id="detail">
        <p id="headline">'.$zaznam["name"].'</p>

    <div class="left">
        <img src="images/'.$zaznam["picture"].'.jpg" alt="'.$zaznam["name"].'" title="'.$zaznam["name"].'">
    </div>

    <div class="right">';
if (isset($_GET['action'])) {
    if ($_GET['action'] == 1) {
    $s .='
    <h3>Rezervovat místa</h3>
    <form id="reservation" action="program.php?movie='.$zaznam["id"].'&amp;action=2" method="post">
    <p>Cena jednoho lístku je '.$zaznam["price"].',-</p>
    <p>Počet volných míst: '.$zaznam["remainingSeets"].'</p>
    <p>Zadejte počet míst: <input type="text" name="select"></p>
    <p><input type="text" name="given" placeholder="Zadejte jméno"></p>
    <p><input type="text" name="sur" placeholder="Zadejte příjmení"></p>
    <input type="submit" name="send" value="Zarezervovat">
    </form>
';

}
    elseif ($_GET['action'] == 2) {
        if(isset($_POST['select'],$_POST['given'],$_POST['sur'])){
        $select = $_POST['select']*1;
        $given = $_POST['given'];
        $sur = $_POST['sur'];
        if ($given == "" OR $sur == "") {
            $s .= '<h3>Vyplňte prosím identifikační údaje.</h3>';
        }
        elseif ($select == "" OR $select == 1) {
            $s .= '
            <h3>Místo byla rezervováno</h3>
            <p>Cena: '.$zaznam["price"].',-</p>
            <p>Lístek si prosím vyzvedněte na pokladně nejpozději do půl hodiny před začátkem filmu, děkujeme</p>
        ';
            $novy = $zaznam["remainingSeets"]-1;
            $dotaz = 'UPDATE `mta`.`program` SET `remainingSeets` = '.$novy.' WHERE `program`.`id` = '.$zaznam["id"].'';
            $vysledek = mysql_query($dotaz);
            $dotaz = 'INSERT INTO `mta`.`customer` (`id`, `given`, `sur`, `amount`, `movie`) VALUES (NULL, '.$given.', '.$sur.', '.$novy.', '.$zaznam["id"].')';
            $vysledek = mysql_query($dotaz);
        }
        else {
            $s .= '
            <h3>Místa byla rezervována</h3>
            <p>Cena: '.$zaznam["price"]*$select.',-</p>
            <p>Lístky si prosím vyzvedněte na pokladně nejpozději do půl hodiny před začátkem filmu, děkujeme</p>
        ';
            $novy = $zaznam["remainingSeets"]-$select;
            $dotaz = 'UPDATE `mta`.`program` SET `remainingSeets` = '.$novy.' WHERE `program`.`id` = '.$zaznam["id"].'';
            $vysledek = mysql_query($dotaz);

            $dotaz = "INSERT INTO `mta`.`customer` (`id`, `given`, `sur`, `amount`, `movie`) VALUES (NULL, '$given', '$sur', '$select', '$id')";
            $vysledek = mysql_query($dotaz);
        }
      }
    }
}



else {
$s .='
        <div class="description">'.$zaznam["description"].'</div>
        <div class="bottom_line">
            <div id="seets">
                <p>Tento film je promítán každý den v '.$zaznam["time"].' v sále '.$zaznam["label"].'</p>
                <p>Délka: '.$zaznam["lenght"].' minut</p>
            </div>
            <a href="program.php?movie='.$zaznam["id"].'&amp;action=1">
                <div id="button">
                    <span>Rezervovat místo</span>
                </div>
            </a>
        </div>
';
}
$s .='</div></div>';
}

else {
    $s = htmlHeader('Cinema Dream - Program','<link rel="stylesheet" type="text/css" href="css/program.css">');
    $s .= '
<div id="program">
    <p id="headline">V našem kině právě hrajeme tyto tituly</p>
    <div id="movies">
';
$dotaz = 'SELECT * FROM `program`';
$vysledek = mysql_query($dotaz);
while($zaznam = mysql_fetch_assoc($vysledek)) {
    $s .='
            <a class="item" href="program.php?movie='.$zaznam["id"].'">
                <div class="top">
                    <img src="images/'.$zaznam["picture"].'.jpg" alt="'.$zaznam["name"].'" title="'.$zaznam["name"].'">
                </div>
                <div class="bottom">
                    <p>'.$zaznam["name"].'</p>
                </div>
            </a>';
}
$s .= ' </div>';}
$s .= htmlFooter();
echo $s;