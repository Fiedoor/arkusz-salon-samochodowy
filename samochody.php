<!DOCTYPE html>
<html lang="pl">

<head>
    <meta charset="UTF-8">
    <title>Wynajmujemy samochody</title>
    <link rel="stylesheet" href="styl.css">
</head>

<body>
    <?php
    $conn = mysqli_connect("localhost", "root", "", "wynajem");
    ?>
    <header>
        <h1>Wynajem samochodów</h1>
    </header>
    <div id="left">
        <h2>DZIŚ POLECAMY TOYOTĘ ROCZNIK 2014</h2>
        <?php
        ?>
        <h2>WSZYSTKIE DOSTĘPNE SAMOCHODY</h2>
        <?php
        ?>
    </div>
    <div id="mid">
        <h2>ZAMÓWIONE AUTA NUMERAMI TELEFONU KLIENTÓW</h2>
        <?php
        ?>
    </div>
    <div id="right">
        <h2>NASZA OFERTA</h2>
        <ul>
            <li>Fiat</li>
            <li>Toyota</li>
            <li>Opel</li>
            <li>Mercedes</li>
        </ul>
        <p>Tu pobierzesz naszą <a href="baza.sql">Bazę danych</a></p>
        <p>Autor Strony: Stanisław Fiedoruk 4J</p>
    </div>
</body>

</html>