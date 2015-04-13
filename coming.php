<?php

require 'function.php';
connectSQL();

if (isset($_GET['movie'])) {
    $id = $_GET['movie'];
    $dotaz = 'SELECT * FROM `coming` WHERE `id` = '.$id.'';
    $vysledek = mysql_query($dotaz);
    $zaznam = mysql_fetch_assoc($vysledek);

    $s = htmlHeader('Cinema Dream - '.$zaznam["name"].'','<link rel="stylesheet" type="text/css" href="css/detail.css">');
    $s .= '
<div id="coming">
    <div id="detail">
        <p id="headline">'.$zaznam["name"].'</p>

    <div class="left">
        <img src="images/'.$zaznam["picture"].'.jpg" alt="'.$zaznam["name"].'" title="'.$zaznam["name"].'">
    </div>

    <div class="right">
        <div class="description">'.$zaznam["description"].'</div>
    </div>
</div>
';
}

else {
    $s = htmlHeader('Cinema Dream - Program','<link rel="stylesheet" type="text/css" href="css/coming.css">');
    $s .= '
<div id="coming">
    <p id="headline">V našem kině právě hrajeme tyto tituly</p>
    <div id="movies">
';
    $dotaz = 'SELECT * FROM `coming`';
    $vysledek = mysql_query($dotaz);
    while($zaznam = mysql_fetch_assoc($vysledek)) {
        $s .='
            <a class="item" href="coming.php?movie='.$zaznam["id"].'">
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