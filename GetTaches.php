<?php
include 'cnx.php';

$sql = $cnx->prepare("select * from tache");
$sql->execute();

$data = $sql->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($data);
?>