<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
 * 首页部分
 * 需要读取缓存配置文件的部分:__gettype
 * 
 */
class Index extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->helper('url');
		$this->load->model('index_model');
		$this->load->model('ranking_model');	//排行模块
		$this->config->load('category',FALSE,TRUE);
	}
	public function index(){
		//$this->output->cache(10);
		$data['cags']=$this->__gettype(5);		//所有分类前5条
		$data['allnews']=$this->index_model->getnew(0,20);	//获得最新发布的前20条
		$data['types']= $this->config->item('type');	//获得分类的缓存配置文件
		$data['navs'] = $this->config->item('nav');	//获得导航数据
		
		//30天内最热门的15部电影
		$data['tops'] = $this->ranking_model->count(0,30,15);
		$data['tops2'] = $this->ranking_model->count(2,30,15);
		
		//print_r($data['tops']);
		//$data['tops'] = $this->__typehot(0,30,15);	
		
		$this->load->view('default/header_view',$data);
		$this->load->view('default/index_view',$data);
	}
	//获得所有分类的 前N个的图片和ID
	public function __gettype($slug){
		$types=$this->index_model->gettype();	//array('Id','type')
		if (empty($types)){
			die('分类为空');
		}
		$i= 0;
		$arrs = array();
		foreach ($types as $type) {
			$i++;
			$arrs[$i]=$this->index_model->getcag($type['Id'],$slug);
		}
		return $arrs;
	}
	/*获得配置文件
	public function config(){
		$this->config->load('category',FALSE,TRUE);
		$arrs= $this->config->item('type');
		print_r($arrs);
		
	}*/
	//other function
}