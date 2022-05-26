<?php
include 'cnx.php';
// Insertion dans la table tache
$idTache = $_POST['idTache'];
$libelleTache = $_POST['libelleTache'];
$etatTache = 0;
$couleurTache = $_POST['couleurTache'];
$idListe = $_POST['idListe'];
$idType = $_POST['idType'];

$sql = $cnx->prepare("insert into tache values(".$idTache.",".$libelleTache.",".$etatTache.",".$couleurTache.",".$idListe.",".$idType.")");
$sql->execute();

echo "Tache enregistrée";
?>