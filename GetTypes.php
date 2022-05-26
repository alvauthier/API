<?php
include 'cnx.php';

$sql = $cnx->prepare("select * from type");
$sql->execute();

$data = $sql->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($data);
?>