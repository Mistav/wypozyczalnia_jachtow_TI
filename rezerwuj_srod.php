<?php
include 'functions.php';
$pdo = pdo_connect_mysql();
$msg = '';
// sprawdzenie czy id istnieje
if (isset($_GET['id'])) {
    if (!empty($_POST)) {
        $id = isset($_POST['id']) ? $_POST['id'] : NULL;
        $name = isset($_POST['name']) ? $_POST['name'] : '';
        $aval = isset($_POST['aval']) ? $_POST['aval'] : '';
        $rserv = isset($_POST['rserv']) ? $_POST['rserv'] : date('Y-m-d H:i:s');
        // aktualizacja rekordu w postaci zabrania danych i podstaiweenia ich do modyfikacji
        $stmt = $pdo->prepare('UPDATE jacht_s SET id = ?, name = ?, aval = ?, rserv = ? WHERE id = ?');
        $stmt->execute([$id, $name, $aval, $rserv, $_GET['id']]);
        $msg = 'Pomyślnie zaktualizowano!';
        //komunikat o sukcesie + przekeirowanie na strone z jachtami morskimi po uplywie 3s
        header( "refresh:3;url=jacht_srodladowy.php" );

    }
    $stmt = $pdo->prepare('SELECT * FROM jacht_s WHERE id = ?');
    $stmt->execute([$_GET['id']]);
    $contact = $stmt->fetch(PDO::FETCH_ASSOC);
    if (!$contact) {
        exit('Nie ma takiego rekordu z podanym ID!');
    }
} else {
    exit('No ID specified!');
}
?>

<?=template_header('Read')?>

<div class="content update">
	<h2>Zarezerwuj jacht <?=$contact['model']?></h2>
    <form action=rezerwuj_srod.php?id=<?=$contact['id']?>" method="post">
        <label for="id">ID</label>
        <label for="name">Imię i Nazwisko</label>
        <input type="text" name="id" placeholder="1" value="<?=$contact['id']?>" id="id">
        <input type="text" name="name" placeholder="" value="<?=$contact['name']?>" id="name">
        <label for="title1">Typ (wpisz frazę ZAREZERWOWANY)</label>
        <label for="created">Do kiedy chcesz zarezerwować?</label>
        <input type="text" name="aval" placeholder="" value="<?=$contact['aval']?>" id="aval">
        <input type="datetime-local" name="rserv" value="<?=date('Y-m-d\TH:i', strtotime($contact['created']))?>" id="rserv">
        <input type="submit" value="Zaktualizuj">
    </form>
    <?php if ($msg): ?>
    <p><?=$msg?></p>
    <?php endif; ?>
</div>

<?=template_footer()?>