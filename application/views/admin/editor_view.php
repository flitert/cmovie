<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert title here</title>
</head>
<body>
	<!-- add user -->
	<p>add user</p>
	<?php echo validation_errors(); ?>
	<?php echo form_open('editor/editor_add') ;?>
	username:<input type="text" name="username"	/>
	password:<input type="text" name="password"	/>
	<input type="submit" name="submit"	/>
	</form>
	<hr	/>
	<!-- add articals -->
	<p>add artricals</p>
	<?php echo validation_errors(); ?>
	<?php echo form_open('editor/artical_add') ;?>
	title:<input type="text" name="title"	/><br />
	content:<textarea rows="5" cols="50" name="content"></textarea>
	<input type="submit" name="submit" />
	
</body>
</html>
