<?php
include 'cnx.php';

$etatTache = $_POST['etatTache'];
$idTache = $_POST['idTache'];

$sql = $cnx->prepare("update tache set etat_tache = ".$etatTache." where id_tache = ".$idTache);
$sql->execute(); 

echo "Tache à jour";