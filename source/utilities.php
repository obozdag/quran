<?php
// Using Terminal to append all .sql files into one: cat sura_???.sql >> ../suras_all.sql (first > than >> to append not to overwrite)

// To select changing rows sql command below can be usable
/*SELECT sura_id, id FROM
(
	SELECT *, IF(@prevVal = YT.sura_id, @rn := @rn + 1, IF(@prevVal := YT.sura_id, @rn := 1, @rn := 1)) rn
	FROM verse YT
	JOIN
	(SELECT @prevVal := -1, @rn := 1) var
) t
WHERE t.rn = 1
*/

	$juz_verses = [
		7 => 206,
		13 => 15,
		16 => 49,
		17 => 109,
		19 => 58,
		22 => 18,
		25 => 60,
		27 => 25,
		32 => 15,
		38 => 24,
		41 => 37,
		53 => 62,
		84 => 21,
		96 => 19,
	];


function update_hizb_page_numbers()
{
	$file = 'verse_page_juz.csv';
	$file_to_write = 'verse_page_juz.sql';
	$rows = file($file);

	//To discard first row (header)
	// array_shift($rows);

	$counter = -1;
	foreach ($rows as $value) {
		++$counter;
		list($sura_id, $verse_no, $hizb_page, $hizb, $juz) = preg_split('/\s*;/', trim($value));
		$sql = "UPDATE `verse` SET hizb_page = '$hizb_page', hizb = '$hizb', juz = '$juz', page = '$counter' WHERE sura_id = '$sura_id' AND verse_no = '$verse_no';\n";
	 	$suras[] = $sql;
	}

	// print_r($suras);
	// file_put_contents($file_to_write, $suras);
}

function update_numbers()
{
	$file = 'new_juz.csv';
	$file_to_write = 'new_juz.sql';
	$rows = file($file);

	//To discard first row (header)
	array_shift($rows);

	foreach ($rows as $value) {
		list($sura_id, $verse_no, $new_juz) = preg_split('/\s*;/', trim($value));
		$sql = "UPDATE `verse` SET new_juz = '$new_juz' WHERE sura_id = '$sura_id' AND verse_no = '$verse_no';\n";
	 	$suras[] = $sql;
	}

	// print_r($suras);
	file_put_contents($file_to_write, $suras);
}

function lines_to_sql($sura_id, $file)
{
	$sajdah_verses = [
		7 => 206,
		13 => 15,
		16 => 49,
		17 => 109,
		19 => 58,
		22 => 18,
		25 => 60,
		27 => 25,
		32 => 15,
		38 => 24,
		41 => 37,
		53 => 62,
		84 => 21,
		96 => 19,
	];
	$verses = file($file);
	$counter = 0;
	foreach ($verses as $verse) {
		$verse = trim($verse);
		++$counter;
		$sajdah = ($sajdah_verses[$sura_id] && ($sajdah_verses[$sura_id] == $counter)) ? 1 : 0;
		$sql = "INSERT INTO verse (`sura_id`, `verse_no`, `verse`, `sajdah`) VALUES ('$sura_id', '$counter', '$verse', $sajdah);\n";
		$suras[] = $sql;
	}

	// print_r($suras);
	file_put_contents($file, $suras);
}

function rename_to_sql()
{
	$path = '/suras-sql/';
	$files = array_diff(scandir($path), array('.', '..', '.DS_Store'));
	foreach($files as $file) {
		rename($path.$file, $path.str_replace('.txt', '.sql', $file));
	}

}

function files_to_sql()
{
	$path = '/suras-sql/';
	$files = array_diff(scandir($path), array('.', '..', '.DS_Store'));
	$counter = 0;
	foreach($files as $file) {
		lines_to_sql(++$counter, $path.$file);
	}
}

update_numbers();
// rename_to_sql();
// files_to_sql();
