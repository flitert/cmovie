<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
 * 翻页类
 * url格式：http://www.link.com/t_0-a_0-y_0/p_1.html
 * 
 * 
 */
class Type extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->helper('url');
		$this->load->model('type_model');
		$this->config->load('category',FALSE,TRUE);
	}
	public function index($type = FALSE,$area = FALSE,$year = FALSE ,$page = FALSE){
		
		$type_url= 'http://www.link.com/t_'.$type.'-a_'.$year.'-y_'.$area.'/';
		
		$this->load->library('pagination');	
		$config['base_url'] = $type_url;
		$config['first_url'] = $type_url.'p_1.html';
		$config['prefix'] = 'p_';
		$config['suffix'] = '.html';
		$config['total_rows'] = $this->type_model ->count('movie',$type,$year,$area);
		$config['per_page'] = 8; 
		$config['uri_segment'] = 2; 		//传递的参数位置
		$config['use_page_numbers'] = TRUE;	//启动页数 1 而不是10
		
		$config['prev_link'] = FALSE;
		$config['next_link'] = FALSE;
		$config['first_link'] = '&lt;&lt;';
		$config['first_tag_open'] = '<li>';
		$config['first_tag_close'] = '</li>';
		$config['last_link'] = '&gt;&gt;';
		$config['last_tag_open'] = '<li>';
		$config['last_tag_close'] = '</li>';
		$config['num_tag_open'] = '<li>';
		$config['num_tag_close'] = '</li>';
		$config['cur_tag_open'] = '<li id="current_tag">';
		$config['cur_tag_close'] = '</li>';
		
		
		$this->pagination->initialize($config); 
  	
		//$data['info'] = $this->news_model ->detail(2);
		/*$data['detail']= array("title"=>$data['info']['nav_title'],
									"description"=>$data['info']['nav_descr'],
									"keywords"=>$data['info']['nav_keywords']);*/
		//获取新闻
  		//$data['news'] = $this->news_model->get_news($config['per_page'],$slug,$this->classid);
		
		
		//echo 'type'.$type.' year'.$year.' area'.$area.' total'.$config['total_rows'];
		//方便生成页面中<a>  url地址
		$data['url']=array(
				'type'=>$type,
				'area'=>$area,
				'year'=>$year,
				'page'=>$page
		);
		$data['types']= $this->config->item('type');	//获得分类的缓存配置文件
		$data['areas']= $this->config->item('area');	//获得分类的缓存配置文件
		//封面等 block的信息
		$data['detail']=$this->type_model->get('movie',$type,$year,$area,$config['per_page'],$page);
		//类型信息
		$data['types']=$this->type_model->gettype();
		$data['years']=$this->type_model->getyear();
		$data['areas']=$this->type_model->getarea();
		//配置文件中的信息
		$data['navs'] = $this->config->item('nav');	//获得导航数据
		//echo 'type: '.$type.' page'.$page;
		$this->load->view('default/header_view',$data);
		$this->load->view('default/type_view',$data);
	}
	
	//other function
}