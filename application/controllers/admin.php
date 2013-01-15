<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller {
	
	public function __construct(){
		parent::__construct();
		$this->load->helper(array('form', 'url'));
		$this->load->library('form_validation');
		$this->load->model('samply_model');
	}
	
	public function index(){
		$data['types']=$this->samply_model->get('type');
		$data['areas']=$this->samply_model->get('area');
		$data['navs']=$this->samply_model->get('nav');
		print_r($data['types']);
		$this ->load->view('admin/add_type',$data);

	}
	public function add_type(){
		$type = $this->input->post('type');
		echo  $this->samply_model->add('type',$type);
	}
	public function add_area(){
		$type = $this->input->post('area');
		echo  $this->samply_model->add('area',$type);
	}
	public function add_movie(){
		$uuid=$this->__uuid();
		$arrs=$this->input->post();
		$detail= array(
			'Id' =>'',
			'uuid' => $uuid,
			'create_time' => time(),
			'movie_name' => $arrs['title'],
			'thumb' => $arrs['thumb'],
			'director' => $arrs['director'],
			'type' => $arrs['type'],
			'area' => $arrs['area'],
			'language'=>$arrs['lang'],
			'release_date' => intval($arrs['release']),
			'introduction' => $arrs['introduction'],
		);
		
		/***判断有几个下载地址 start***/
		$i = 0;
		$down = array();
		if ($arrs['thunder'] != ''){
			$i=$i+1	;
			$down[$i]= array(
				'Id' =>'',
				'uuid' => $uuid,
				'type' => 1,
				'url' => $arrs['thunder']
			);
		}
		if ($arrs['qvod'] != ''){
			$i=$i+1	;
			$down[$i]= array(
				'Id' =>'',
				'uuid' => $uuid,
				'type' => 2,
				'url' => $arrs['qvod']
			);
		}
		if ($arrs['baidu'] != ''){
			$i=$i+1	;
			$down[$i]= array(
				'Id' =>'',
				'uuid' => $uuid,
				'type' => 3,
				'url' => $arrs['baidu']
			);
		}
		/***判断有个url地址 end***/
		$this->samply_model->movie_add($detail,$down);
		
	}
	
	public function __uuid($prefix = ''){
	    $chars = md5(uniqid(mt_rand(), true));
	    $uuid = substr($chars,0,8) . '-';
	    $uuid .= substr($chars,8,4) . '-';
	    $uuid .= substr($chars,12,4) . '-';
	    $uuid .= substr($chars,16,4) . '-';
	    $uuid .= substr($chars,20,12);
	    return $prefix . $uuid;
	}
	//保存为配置文件
	public function renew(){
		$type='type';$area='area';$nav='nav';				//设置表名
		$types=$this->samply_model->get($type);	//获得表中数据  
		$areas=$this->samply_model->get($area);
		$navs=$this->samply_model->get($nav);
		
		$string_start = "<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');\n ";
		$string_end = "\n ?>";
		$typestr= $this->result2array($types,$type);
		$areastr= $this->result2array($areas,$area);
		$navsstr= $this->result2array($navs,$nav);
		$str=$string_start.$typestr.$areastr.$navsstr.$string_end;	//config文件的路径
		$conf_path= BASEPATH.'../application/config/category.php';	//config文件的路径
		// 写入文件
		$this->load->helper('file');
		if (write_file($conf_path, $str) ){
			echo 'ok';
		}
	}
	//$config['type'] = array('1'=>'科幻');
	//把数组返回为字符串
	public function result2array($arrs,$name){
			$string ='$config[\''.$name.'\']='.var_export($arrs, TRUE).";\n ";
			return $string;
	}
	public function nav(){
		$link=$this->input->post('navlink');
		$name=$this->input->post('navtitle');
		$nav = array(
			'Id'=>'',
			'link'=>$link,
			'name'=>$name
		);
		//print_r($nav);
		$this->samply_model->nav_add($nav);
	}
	//other function
}