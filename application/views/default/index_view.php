<?php 
	$murl='movie/p_';
?>
<!------main-------->
<div id="main" class="container">
	<div id="top">
    	<h2>最新电影下载</h2>
		<ul>
		<?php foreach ($allnews as $allnew){
			echo '<li>'.anchor($murl.$allnew['Id'],$allnew['movie_name']).'</li>';
		}?>
        </ul>
    </div>
    <div id="flash">
        <h2>rebo</h2>
    </div>
	<div id="items">
		<?php foreach ($cags as $key => $cag){
			if (!empty($cag)){
				echo '<div class="last_list">';
				echo '<h3>'.$types[$key-1]['type'].'</h3><ul>';
					foreach ($cag as $cdetail){
						$cdimg= '<img src="'.$cdetail['Thumb'].'"/>';
						$cdtitle='<span>'.$cdetail['movie_name'].'</span>';
						echo '<li class="caglink">'.anchor($murl.$cdetail['Id'],$cdimg.$cdtitle).'</li>';					
					}
				echo '</ul></div>';
			}
		}?>
    </div>
    <div class="hot">
    	<div id="hot_movie">
    		<h2>所有电影排行</h2>
            <ul>
                <?php 
                	foreach ($tops as $top) {
                		echo '<li>'.anchor('movie/p_'.$top['mid'],$top['movie_name']).'</li>';
                	}
                ?>
            </ul>
         </div>
         <div id="hot_tv">
         	<h2>科幻片排行</h2>
            <ul>
                <?php 
                	foreach ($tops2 as $top2) {
                		echo '<li>'.anchor('movie/p_'.$top2['mid'],$top2['movie_name']).'</li>';
                	}
                ?>
            </ul>
         </div>
    </div>
<div class="clear"></div>

</div>
<!------footer-------->
<div class="fcontainer">
<div id="footer" class="container">

</div>
</div>

</body>
</html>