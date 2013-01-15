<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert title here</title>
</head>
<body>
	<?php echo anchor('admin/renew','更新配置文件');?>

	<?php echo validation_errors(); ?>
	<?php echo form_open('admin/add_type') ;?>
	<span>type</span>
	<input type="text" name="type" size="25" /><br /> 
	<input type="submit" name="submit"	/>
	</form>
	
<!-- add area -->
	<?php echo validation_errors(); ?>
	<?php echo form_open('admin/add_area') ;?>
	<span>area</span>
	<input type="text" name="area" size="25" /><br /> 
	<input type="submit" name="submit"	/>
	</form>
<!-- add movie -->
	<h2>add movie</h2>
	<?php echo validation_errors() ;?>
	<?php echo form_open('admin/add_movie') ;?>
	<span>title</span><input type="text" name="title" size="25"	 value="title" /><br />
	<span>thumbnail</span><input type="text" name="thumb" size="35"	value="thumbnail" /><br />
	<span>director</span><input type="text" name="director" size="25" value="director"	/><br />
	<span>release_time</span><input type="text" name="release" size="25" value="2012" /><br />
	<span>type</span><select name="type">
	<?php 
	foreach ($types as $type){
		echo '<option value="'.$type['Id'].'">'.$type['type'].'</option>';
	}
	?>
	
	</select><br />
		<span>area</span><select name="area">
	<?php 
	foreach ($areas as $area){
		echo '<option value="'.$area['Id'].'">'.$area['area'].'</option>';
	}
	?>
	</select><br />
	<input type="text" name="lang" value="英语"	/><br />
	<textarea rows="6" cols="50" name="introduction">introduction</textarea><br />
	<span>thunder</span><input type="text" name="thunder" size="50"	value="thunder" /><br />
	<span>qvod</span><input type="text" name="qvod" size="50" value="qvod" /><br />
	<span>baidu</span><input type="text" name="baidu" size="50"	value="baidu" /><br />
	<input type="submit" name="submit"	/>
	</form>

<!-- add nav -->
	<h2>add movie</h2>
	
	<?php 
		foreach ($navs as $nav){
			echo 'name:'.$nav['name'].'link:'.$nav['link']."<br />";	
		}
	?>
	
	<?php echo validation_errors() ;?>
	<?php echo form_open('admin/nav') ;?>
	<span>name</span><input type="text" name="navtitle" />
	<span>link</span><input type="text" name="navlink" />
	<input type="submit" name="submit"	/>
	</form>
</body>
</html>