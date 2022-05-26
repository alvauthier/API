<?php
include 'cnx.php';

$idTache = $_POST['idTache'];

$sql = $cnx->prepare("delete from tache where id_tache = ".$idTache);
$sql->execute(); 

echo "Tache supprimée";