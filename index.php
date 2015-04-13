<?php

require 'function.php';
connectSQL();

$dotaz = 'SELECT * FROM `program` WHERE `id` = 3 OR `id` = 4 OR `id` = 6 OR `id` = 8';
$vysledek = mysql_query($dotaz);

$s = htmlHeader('Cinema Dream','<link rel="stylesheet" type="text/css" href="css/homepage.css">');
$s .= '
<div id="homepage">

    <p id="headline">Profesionální služby, vždy skvělý zážitek, vstřícná obsluha, to je <strong>Cinema Dream</strong>.</p>
        <div id="movies">';
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
$s .= ' </div>';
$s .= htmlFooter();
echo $s;

$zaznam = mysql_fetch_assoc($vysledek);