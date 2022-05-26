<?php
include 'cnx.php';
// Insertion dans la table type
$idType = $_POST['idType'];
$libelleType = $_POST['libelleType'];
$FKidType = $_POST['FKidType'];

$sql = $cnx->prepare("insert into liste values(".$idType.",".$libelleType.",".$FKidType.")");
$sql->execute();

echo "Type enregistré";
?>