<?php 
$urlslug= 't_'.$url['type'].'-a_'.$url['area'].'-y_'.$url['year'].'/p_'.$url['page'];
?>
<!------main-------->
<div id="main" class="container">
	<div id="suoyin">
    	<div id="type" class="cag">
    		<h3>影片类型</h3>
    		<ul>
    		<?php foreach ($types as $type){
    			if ($type['Id']==$url['type']){
    				echo '<li><span class="current" >'.$type['type'].'</span></li>';
    			}else{
    				echo '<li>'.anchor('t_'.$type['Id'].'-a_'.$url['area'].'-y_'.$url['year'].'/p_1',$type['type']).'</li>';
    			}
    		}
    		
    		?>
    		</ul>
    	</div>
    	<div id="year" class="cag">
    		<h3>影片年份</h3>
    		<ul>
    		<?php foreach ($years as $year){
    			$year =$year['release_date'];
    			if ($year == $url['year']){
    				echo '<li><span class="current" >'.$year.'</span></li>';
    			}else{
    				echo '<li>'.anchor('t_'.$url['type'].'-a_'.$url['area'].'-y_'.$year.'/p_1',$year).'</li>';
    			}
    		} 		
    		?>
    		</ul>
    	</div>
    	<div id="area" class="cag">
    		<h3>影片区域</h3>
    		<ul>
    		<?php foreach ($areas as $area) {
    			$areaid=$area['Id'];
    			$area = $area['area'];
    			if ($areaid == $url['area']){
    				echo '<li><span class="current" >'.$area.'</span></li>';
    			}else{
    				echo '<li>'.anchor('t_'.$url['type'].'-a_'.$areaid.'-y_'.$url['year'].'/p_1',$area).'</li>';
    			}
    		} 
    		?>
    		</ul>
    	</div>
    	
    </div>
    <div id="blocks">
    <?php 
    foreach ($detail as $arr){
	    echo '<div class="one">';
	    $mlink=site_url('movie/p_'.$arr['Id']);
	    echo '<div class="imgpic">'.anchor($mlink,'<img src="'.$arr['Thumb'].'" />').'</div>';
	    echo '<ul>';
	    echo '<li class="movie_title">'.anchor($mlink,$arr['movie_name']).'</li>';
	    echo '<li>导演: '.$arr['director'].'</li>';
	    echo '<li>类型: '.$types[$arr['type']-1]['type'].'</li>';
	    echo '<li>地域: '.$areas[$arr['area']-1]['area'].'</li>';
	    echo '<li>语言: '.$arr['language'].'</li>';
	    echo '<li>上映时间: '.$arr['release_date'].'</li>';
	    echo '</ul></div>';	
    }
    
    ?>
    <!-- 分页数字 -->
    <?php 
	echo '<div id="pagination"><ul>';
	echo $this->pagination->create_links();
	echo '</ul></div>';
	?>
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