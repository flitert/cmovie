<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
 * 单页部分
 * url样式:
 * 
 */
class Movie extends CI_Controller {
	
	public function __construct(){
		parent::__construct();
		$this->load->helper(array('url'));
		$this->load->model('movie_model');
		$this->load->model('ranking_model');
		$this->config->load('category',FALSE,TRUE);
	}

	public function index(){
		echo 'index';
	}
	public function page($slug = FALSE){
		if ($slug <1){
			$slug = 1;
		}
		$this->__display($slug);
	}
	public function __display($slug){
		$data['types']= $this->config->item('type');	//获得分类的缓存配置文件
		$data['areas']= $this->config->item('area');	//获得分类的缓存配置文件
		$data['navs'] = $this->config->item('nav');		//获得导航数据
		$data['detail']=$this->movie_model->get($slug);
		$this->ranking_model->insert($slug,$data['detail']['detail']['type']);//统计阅读次数
		//print_r($this->ranking_model->count(2,30,15) );
		$this->load->view('default/header_view',$data);
		$this->load->view('default/movie_view',$data);
		//print_r($data['detail']);
	}
	//other function
}