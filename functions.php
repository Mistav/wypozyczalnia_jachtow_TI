<?php
// config polaczenia z baza danych + naglowek

function pdo_connect_mysql() {
    $DATABASE_HOST = '127.0.0.1';
    $DATABASE_USER = 'root';
    $DATABASE_PASS = '';
    $DATABASE_NAME = 'phpcrud';
    try {
    	return new PDO('mysql:host=' . $DATABASE_HOST . ';dbname=' . $DATABASE_NAME . ';charset=utf8', $DATABASE_USER, $DATABASE_PASS);
    } catch (PDOException $exception) {

    	exit('Blad polaczenia do bazy danych!');
    }
}
function template_header($title) {
echo <<<EOT
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>$title</title>
		<link href="style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
	</head>
	<body>
    <nav class="navtop">
    	<div>

			<a href="index.php"><i class="fas fa-ship"></i>WYPOŻYCZALNIA JACHTÓW</a>
			<a href="jachty.php"><i class="fas fa-mobile-alt"></i>Wypożycz jacht</a>
			<a href="oferta.php"><i class="fas fa-tv"></i>Oferta</a>
			<a href="kontakt.php"><i class="fas fa-user-circle"></i>Kontakt</a>
    	</div>
    </nav>
EOT;
}
function template_footer() {
echo <<<EOT
    </body>

</html>
EOT;
}
?>