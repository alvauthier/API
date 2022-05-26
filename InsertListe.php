<?php
include 'cnx.php';
// Insertion dans la table liste
$idListe = $_POST['idListe'];
$libelleListe = $_POST['libelleListe'];
$idUtilisateur = $_POST['idUtilisateur'];

$sql = $cnx->prepare("insert into liste values(".$idListe.",".$libelleListe.",".$idUtilisateur.")");
$sql->execute();

echo "Liste enregistrée";
?>