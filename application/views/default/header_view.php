<?php 
$tmep=site_url().'template/';	//生成css js pic绝对地址
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>【隔膜泵_磁力泵_排污泵_液下泵_潜水泵_深井泵】_贵州丰企泵阀</title>
<meta name="description" content="贵州泵阀直销厂家：贵州丰企泵阀为您提供泵阀产品系列样本说明书、技术资料、型号、参数与服务，产品包括：隔膜泵、磁力泵、排污泵、液下泵、潜水泵、深井泵等，性能优良，运行稳定，欢迎选购。" />
<meta name="keywords" content="隔膜泵,磁力泵,排污泵,液下泵,潜水泵,深井泵,贵州丰企泵阀GZFQ" />
<link href="<?php echo $tmep ;?>style/index.css" rel="stylesheet" type="text/css" />
<script src="<?php echo $tmep ;?>js/index.js" language="javascript" type="text/javascript"></script>
</head>
<body>
<div class="hcontainer">
<div id="header" class="container">
    <img id="logo" src="<?php echo $tmep ;?>imgs/logo.jpg" width="178" height="59" alt="logo" />
    <form id="search_form" method="get" action="../gzresult.html">
		<input type="text" id="input_text" 	name="fqgz" value="Search" class="swap_value"  onkeydown="BindEnter(event)" onclick= "if(this.value== 'Search')   {this.value= ' ';}" />
		<img src="../images/search.gif"  id="go" alt="Search" title="Search"  onclick="getclick(); return false;"/>
        <input type="submit"  id="go_hidden"  style="display:none" title="send" /></form>
    <div id="nav">
    	<ul>
    		<?php 
    			foreach ($navs as $nav){
    				$link=site_url().$nav['link'].".html";
    				echo '<li>'.anchor($link,$nav['name']).'</li>';
    			}
    		?>
        </ul>
    </div>
</div>
</div>