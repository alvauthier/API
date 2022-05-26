<?php
include 'cnx.php';

$sql = $cnx->prepare("select * from tache");
$sql->execute();

//echo "<table>";
$data = $sql->fetchAll(PDO::FETCH_ASSOC);
//json_encode($data);

echo json_encode($data);

// foreach($sql->fetchAll(PDO::FETCH_ASSOC) as $ligne)
// {
//     echo "<tr>";
//         echo "<td>".$ligne['id_tache']."</td>";
//         echo "<td>".$ligne['libelle_tache']."</td>";
//         echo "<td>".$ligne['etat_tache']."</td>";
//         echo "<td>".$ligne['couleur_tache']."</td>";
//         echo "<td>".$ligne['FK_id_liste']."</td>";
//         echo "<td>".$ligne['FK_id_type']."</td>";
//     echo "</tr>";
// }
// echo "</table>"

?>