<?php 
	$detail=$detail['detail'];
	$urlslug= 't_'.$detail['type'].'-a_0-y_0/p_1';
?>
<!------main-------->
<div id="navigation" class="container">
	<ul>
		<li><?php echo anchor(site_url(),'首页') ;?></li>
		<li><?php echo anchor($urlslug,$types[$detail['type']-1]['type']) ;?></li>
		<li><?php echo $detail['movie_name'] ;?></li>
	</ul>
</div>
<div id="main" class="container">
	<div id="detail">
		<h1><?php echo $detail['movie_name']; ?></h1>
		<div class="pic">
			<img src="<?php echo $detail['Thumb'];; ?>" alt="<?php echo $detail['movie_name'] ;?>" >
		</div>
		<div class="descrip">
			<ul>
				<li>影片名: <?php echo $detail['movie_name'] ;?></li>
				<li>导演: <?php echo $detail['director'] ;?></li>
				<li>类型: <?php echo $types[($detail['type']-1)]['type'] ;?></li>
				<li>地域: <?php echo $areas[$detail['area']-1]['area'] ;?></li>
				<li>语言: <?php echo $detail['language'] ;?></li>
				<li>上映时间: <?php echo $detail['release_date'] ;?></li>
			</ul>
		</div>
		<div id="down">
			<h2>下载资源</h2>
			<ul>
				<li>迅雷下载地址:</li>
				<li>QVOD下载地址:</li>
				<li>百度影音下载地址:</li>
			</ul>
		</div>
		<div id="plot">
			<h2>剧情简介</h2>
			<p><?php echo $detail['introduction']; ?></p>
		</div>
		<div id="review">
			<h2>大家评论</h2>
			<ul>
				<li>评论1</li>
				<li>评论1</li>
				<li>评论1</li>
				<li>评论1</li>
				<li>评论1</li>
			</ul>
		</div>
	</div>
</div>
<div class="clear"></div>