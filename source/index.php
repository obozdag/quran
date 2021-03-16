<?php require 'db.php'; ?>
<!DOCTYPE html>
<html>
<head>
	<title>Easy Quran</title>
	<meta charset="utf-8">
	<meta name="description" content="Easy Quran, easy to read, easy to scroll (top-to-bottom), lightweight (2.7MB), lightning fast, multi language, responsive, progressive web app.">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="apple-mobile-web-app-status-bar" content="<?= $color ?>">
	<meta name="theme-color" content="<?= $color ?>">
	<link rel="preload" href="css/fonts/hamdullah.ttf" as="font" crossorigin>
	<link rel="preload" href="css/fonts/rb_icons.ttf" as="font" crossorigin>
	<link rel="stylesheet" type="text/css" href="css/easy_quran.css">
	<link rel="apple-touch-icon" href="css/icons/easy_quran_96x96.png">
	<link rel="manifest" href="easy_quran.json">
</head>
<body>
	<div id="loading_overlay" style="display: none;">
		<div id="loading_content">
			<h3>Easy Quran</h3>
			<p><img src="css/icons/loading.gif"></p>
			<p>Loading...</p>
			<p>quran.fklavye.net</p>
		</div>
	</div>
	<nav id="nav_top">
		<i id="open_nav_left" class="nav_top_btn rb" title="Nav Left">q</i>
		<i id="program_info_btn" class="nav_top_btn rb" title="Program Info">a</i>
		<i id="top_btn" class="nav_top_btn rb" title="Top">t</i>
		<i id="bottom_btn" class="nav_top_btn rb" title="Bottom">d</i>
		<span><i class="nav_top_btn rb" id="bookmark_icon" title="Bookmark">b</i><span id="bookmark_container"></span></span>
		<i id="open_nav_right" class="nav_top_btn rb" title="Nav Right">s</i>
	</nav>
	<nav id="nav_left" class="nav-side">
		<i class="rb close_btn right" id="close_nav_left">c</i>
		<div class="settings">
			<div class="row">
				<label id="sura_list_label"></label>
				<div class="flex">
					<select id="sura_list" class="mr-1">
						<?php
						// foreach ($rows_sura as $row):
						// 	$id     = $row['id'];
						// 	$sajdah = $row['sajdah'] ? '*': '';
						// 	$option = $row['en'].' '.$id.' ('.$row['verses'].')'.$sajdah;
						// 	echo "<option value=\"s{$id}\">{$option}</option>\n";
						// endforeach;
						?>
					</select>
					<button type="button" class="btn btn_nav mr-1" id="sura_az_order" title="Order by Sura Name"><i class="rb">A</i></button>
					<button type="button" class="btn btn_nav" id="sura_id_order"><i class="rb" title="Order by Sura Number">B</i></button>
				</div>
			</div>
			<div class="row">
				<label id="juz_list_label"></label>
				<select id="juz_list">
					<option></option>
				</select>
			</div>
			<div class="row">
				<label id="page_input_label"></label>
				<span class="goto_page_container">
					<input type="text" id="page_no" size="3" min="0" max="604" maxlength="3" pattern="\d{1,3}" title="Sayfa numarası 0-604">
					<button type="button" class="btn btn_nav" id="goto_page_btn"></button>
				</span>
			</div>
			<div class="row" id="sura_shortcuts_row">
				<label id="sura_shortcuts_label"></label>
				<div id="sura_shortcuts_container">
					<ul id="sura_shortcuts">
					</ul>
				</div>
			</div>
		</div>
	</nav>
	<nav id="nav_right" class="nav-side">
		<i class="rb close_btn left" id="close_nav_right">c</i>
		<h4 id="settings_header"></h4>
		<div class="settings">
			<div class="row">
				<label id="font_family_list_label"></label>
				<select id="font_family_list"></select>
			</div>
			<div class="row">
				<label id="font_size_list_label"></label>
				<select id="font_size_list"></select>
			</div>
			<div class="row">
				<label id="color_list_label"></label>
				<select id="color_list"></select>
			</div>
			<div class="row">
				<label id="bg_color_list_label"></label>
				<select id="bg_color_list"></select>
			</div>
			<div class="row">
				<label id="language_list_label"></label>
				<select id="language_list"></select>
			</div>
			<div class="row">
				<label></label>
				<button type="button" class="btn btn_nav" id="reset_btn"></button>
			</div>
			<div id="nav_loading" class="nav-loading">
				<p id="settings_message"></p>
			</div>
		</div>
	</nav>
	<div class="container" id="quran_container">
		<div id="quran_verses" class="arabic">
			<?php
			foreach($rows_verse as $row):
				$page        = $row['page'];
				$sura_sajdah = $row['sura_sajdah'] ? '*': '';
				$sura_info   = ' ('.$row['verses'].')'.$sura_sajdah;

				if ($page !== null):
					$page_anchor_label = 's '.$page;
					$page_anchor_href  = 'p'.$page;
					$page_info         = $row['sura_id'].' '.$row['sura_tr'].' '.$sura_info.' ['.$row['juz'].'. cz '.$row['hizb'].'. hzb '.$row['hizb_page'].'. syf'.']';
					?>
					<?php if ($page > 0): ?>
					</div>
					<?php endif; ?>
				<div class="page">
					<p class="pip">
						<?php if($row['new_juz']):
							$juz_anchor_label = 'Cüz '.$row['new_juz'];
							$juz_anchor_href  = 'j'.$row['new_juz'];
							?>
							<i class="ca" id="<?= $juz_anchor_href ?>"><?= $juz_anchor_label ?></i>
						<?php endif; ?>
						<i class="pa" id="<?= $page_anchor_href ?>" ><?= $page_anchor_label ?></i>
						<i class="ib rb">i</i>
						<i class="pi"><?= $page_info ?></i>
					</p>
					<?php
				endif; ?>
				<?php
				if ($row['new_sura']):
					$sura_href   = 's'.$row['sura_id'];
					$sura_header = $row['sura_id'].' '.$row['sura_tr'].$sura_info.' سُورَةُ '.$row['sura_name'];
					?>
					<h4 class="sn" id="<?= $sura_href ?>"><?= $sura_header ?></h4>
					<?php if ($row['basmala']): ?>
						<p class="basmala">بِسْمِ اللَّهِ الرَّحْمٰنِ الرَّحِيمِ</p>
					<?php endif;
				endif; ?>
				<?php
				$sajdah_class = $row['sajdah'] ? ' class="sajdah"' : ''; ?>
				<i class="vn" id="v<?= $row['id'] ?>" data-label = "<?= $page_anchor_label.' a '.$row['verse_no'] ?>">(<?= $row['verse_no'] ?>)</i><i<?= $sajdah_class ?>><?= $row['verse'] ?></i>
				<?php
			endforeach; ?>
		</div>
	</div>
	<footer><a target="_blank" href="https://github.com/obozdag/quran"><i class="rb logo" title="Easy Quran">a</i> Easy Quran</a></footer>
	<div class="overlay" id="program_info_popup">
		<div class="popup">
			<i id="close_popup_btn" class="rb close_btn right">c</i>
			<h3><i class="rb logo">a</i> Easy Quran <?= $version ?></h3>
			<div id="program_info_content">
			</div>
		</div>
	</div>
	<script src="js/swipe.js"></script>
	<script src="js/lang.js"></script>
	<script src="js/settings.js"></script>
	<script src="js/easy_quran.js"></script>
	<script src="app.js"></script>
</body>
</html>
