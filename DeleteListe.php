<?php
include 'cnx.php';

$idListe = $_POST['idListe'];

$sql = $cnx->prepare("delete from liste where id_liste = ".$idListe);
$sql->execute(); 

echo "Liste supprimée";