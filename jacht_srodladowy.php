<?php
include 'functions.php';
$pdo = pdo_connect_mysql();
$page = isset($_GET['page']) && is_numeric($_GET['page']) ? (int)$_GET['page'] : 1;
$records_per_page = 15;
$stmt = $pdo->prepare('SELECT * FROM jacht_s ORDER BY id LIMIT :current_page, :record_per_page');
$stmt->bindValue(':current_page', ($page-1)*$records_per_page, PDO::PARAM_INT);
$stmt->bindValue(':record_per_page', $records_per_page, PDO::PARAM_INT);
$stmt->execute();
$contacts = $stmt->fetchAll(PDO::FETCH_ASSOC);
$num_contacts = $pdo->query('SELECT COUNT(*) FROM jacht_s')->fetchColumn();
?>
<?=template_header('Read')?>

<div class="content read">
	<h2>Jachty Śródlądowe</h2>
	<table>
        <thead>
            <tr>
                <td>Nr. wew.</td>
                <td>Model jachtu</td>
                <td>Cena za godzinę wynajmu</td>
                <td>Stan</td>
                <td>Zarezerwowano do</td>
                <td>Zarezerwowany przez</td>
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
                    <a href="rezerwuj_srod.php?id=<?=$contact['id']?>" class="edit"><i class="fas fa-pen fa-xs"></i></a>

                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
	<div class="pagination">
		<?php if ($page > 1): ?>
		<a href="jacht_srodladowy.php?page=<?=$page-1?>"><i class="fas fa-angle-double-left fa-sm"></i></a>
		<?php endif; ?>
		<?php if ($page*$records_per_page < $num_contacts): ?>
		<a href="jacht_srodladowy.php?page=<?=$page+1?>"><i class="fas fa-angle-double-right fa-sm"></i></a>
		<?php endif; ?>
	</div>
</div>

<?=template_footer()?>
