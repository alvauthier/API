<?php
include 'cnx.php';

$sql = $cnx->prepare("select * from type");
$sql->execute();

//echo "<table>";
$data = $sql->fetchAll(PDO::FETCH_ASSOC);
//json_encode($data);

echo json_encode($data);

// foreach($sql->fetchAll(PDO::FETCH_ASSOC) as $ligne)
// {
//     echo "<tr>";
//         echo "<td>".$ligne['id_type']."</td>";
//         echo "<td>".$ligne['libelle_type']."</td>";
//         echo "<td>".$ligne['FK_id_type']."</td>";
//     echo "</tr>";
// }
// echo "</table>"

?>