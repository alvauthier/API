<?php
include 'cnx.php';

$idType = $_POST['idType'];

$sql = $cnx->prepare("delete from type where id_type = ".$idType);
$sql->execute(); 

echo "Type supprimé";