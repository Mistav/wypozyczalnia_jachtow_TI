<?php
include 'functions.php';
// polaczenie do bazy danych
$pdo = pdo_connect_mysql();
//otywarcie strony uzywajac GET w przeciwnym razie wyrzuci na pierwsza strone
$page = isset($_GET['page']) && is_numeric($_GET['page']) ? (int)$_GET['page'] : 1;
// ilosc rekordow z tbalei na jednej stronie
$records_per_page = 15;
// zapytanie sql
$stmt = $pdo->prepare('SELECT * FROM jacht_m ORDER BY id LIMIT :current_page, :record_per_page');
$stmt->bindValue(':current_page', ($page-1)*$records_per_page, PDO::PARAM_INT);
$stmt->bindValue(':record_per_page', $records_per_page, PDO::PARAM_INT);
$stmt->execute();

$contacts = $stmt->fetchAll(PDO::FETCH_ASSOC);
$num_contacts = $pdo->query('SELECT COUNT(*) FROM jacht_m')->fetchColumn();
?>
<?=template_header('Read')?>

<div class="content read">
	<h2>Jachty Morskie</h2>
	<table>
        <thead>
            <tr>
                <td>Nr. wew.</td>
                <td>Model jachtu</td>
                <td>Cena za godzinę wynajmu</td>
                <td>Typ</td>
                <td>Zarezerowano do</td>
                <td>Zarezerowano przez</td>
                <td></td>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($contacts as $contact): ?>
            <tr>
                <td><?=$contact['id']?></td>
                <td><?=$contact['model']?></td>
                <td><?=$contact['price']?></td>
                <td><?=$contact['aval']?></td>
                <td><?=$contact['rserv']?></td>
                <td><?=$contact['name']?></td>
                <td class="actions">
                    <a href="rezerwuj.php?id=<?=$contact['id']?>" class="edit"><i class="fas fa-pen fa-xs"></i></a>

                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
	<div class="pagination">
		<?php if ($page > 1): ?>
		<a href="jacht_morski.php?page=<?=$page-1?>"><i class="fas fa-angle-double-left fa-sm"></i></a>
		<?php endif; ?>
		<?php if ($page*$records_per_page < $num_contacts): ?>
		<a href="jacht_morski.php?page=<?=$page+1?>"><i class="fas fa-angle-double-right fa-sm"></i></a>
		<?php endif; ?>
	</div>
</div>

<?=template_footer()?>
