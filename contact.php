<?php

require 'function.php';

$s = htmlHeader('Cinema Dream - Kontakty','<link rel="stylesheet" type="text/css" href="css/contact.css">');

$s .='
<div id="contact">
    <div id="left">
        <p id="title">Informační centrum</p>
        <p class="text"><strong>Linka 1:</strong> 300 300 001</p>
        <p class="text"><strong>Linka 2:</strong> 300 300 002</p>
        <p><a id="email" href="mailto:info@cinemadream.cz?subject=Support">Napište nám: info@cinemadream.cz</a></p>
    </div>
    <div id="map">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2559.2828345559565!2d14.437939588885504!3d50.09971279615207!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x470b94b7f44d1407%3A0xacd516dcc1def4af!2sPark+Vltavsk%C3%A1!5e0!3m2!1scs!2scz!4v1402236805963" width="600" height="450" frameborder="0" style="border:0"></iframe>
    </div>';

$s .= htmlFooter();
echo $s;