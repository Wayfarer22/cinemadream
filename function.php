<?php

function htmlHeader ($title,$links) {
    $d = '

    <!DOCTYPE html>
<html>
    <meta charset="UTF-8">
    <meta name="Author" content="David Kubáč">
    <meta name="keywords" content="David Kubáč,Školní webovky,Školní práce,Cinema,Cinema Dream">
    <link rel="stylesheet" type="text/css" href="css/default.css">
    <link rel="stylesheet" type="text/css" href="css/print.css" media="print">';
    $d .= $links;
    $d .= '
    <link href="http://fonts.googleapis.com/css?family=Alegreya+Sans:400,300,700&amp;subset=latin,latin-ext" rel="stylesheet" type="text/css">
    <title>'.$title.'</title>
<body>

<div id="wrapper">
    <div id="header-wrapper">
        <div id="header" class="container">
            <div id="logo">
                <h1><a href="index.php">Cinema Dream</a></h1>
            </div>
        </div>
    </div>
    <div id="menu-wrapper">
        <div id="menu" class="container">
            <ul>';
    $d .= isCurrent();
    $d .= ' </ul>
        </div>
    </div>
        <div id="page" class="container">
    ';
    return $d;
}

function htmlFooter () {
    $d = '
        </div>
    </div>
</div>
<div id="copyright">
    <p>&copy; Cinema Dream. All rights reserved. | Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.</p>
</div>
    ';
    return $d;
}

function isCurrent() {
    if(strpos($_SERVER['SCRIPT_NAME'],"index") != FALSE) {
        return '    <li class="current_page_item"><a href="index.php">Homepage</a></li>
                    <li><a href="program.php">Program</a></li>
                    <li><a href="coming.php">Připravujeme</a></li>
                    <li><a href="contact.php">Kontakty</a></li>';
    }
    elseif(strpos($_SERVER['SCRIPT_NAME'],"program") != FALSE){
        return '    <li><a href="index.php">Homepage</a></li>
                    <li class="current_page_item"><a href="program.php">Program</a></li>
                    <li><a href="coming.php">Připravujeme</a></li>
                    <li><a href="contact.php">Kontakty</a></li>';
    }
    elseif(strpos($_SERVER['SCRIPT_NAME'],"coming") != FALSE){
        return '    <li><a href="index.php">Homepage</a></li>
                    <li><a href="program.php">Program</a></li>
                    <li class="current_page_item"><a href="coming.php">Připravujeme</a></li>
                    <li><a href="contact.php">Kontakty</a></li>';
    }
    elseif(strpos($_SERVER['SCRIPT_NAME'],"contact") != FALSE){
        return '    <li><a href="index.php">Homepage</a></li>
                    <li><a href="program.php">Program</a></li>
                    <li><a href="coming.php">Připravujeme</a></li>
                    <li class="current_page_item"><a href="contact.php">Kontakty</a></li>';
    }
}

function connectSQL() {
    define('server','127.0.0.1');
    define('database','cinema');
    define('name','root');
    define('password','');

    @mysql_connect(server, name, password) or die('Omlouváme se, k databázi se nebylo možné připojit');
    @mysql_query('SET SESSION character_set_results = utf8');
    @mysql_query('SET SESSION character_set_client = utf8');
    @mysql_query('SET SESSION character_set_connection = utf8');

    @mysql_query('SET NAMES utf8');
    @mysql_select_db(database) or die('Nelze vybrat databázi.');
}