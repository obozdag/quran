<?php
require 'db_connect.php';

if(!$conn)
	echo mysqli_connect_error();

//On production MySQL server verses were only question marks. Adding this command it is solved.
mysqli_set_charset($conn, 'utf8');

//Get Suras
$sql_sura     = "SELECT * FROM fkl_sura ORDER BY tr";
$result_sura  = mysqli_query($conn, $sql_sura);
$rows_sura    = mysqli_fetch_all($result_sura, MYSQLI_ASSOC);

//Get Verses of the Sura
$sql_verse    = "SELECT v.*, s.name AS sura_name, s.tr AS sura_tr, s.en AS sura_en, s.basmala FROM fkl_verse v INNER JOIN fkl_sura s ON s.id = v.sura_id";
$result_verse = mysqli_query($conn, $sql_verse);
$rows_verse   = mysqli_fetch_all($result_verse, MYSQLI_ASSOC);

mysqli_free_result($result_verse);
mysqli_close($conn);

$version = 'v1.9';