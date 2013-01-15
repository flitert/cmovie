<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Editor extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->helper(array('form', 'url'));
		$this->load->model('editor_model');
	}
	public function index(){
		$this->load->view('admin/editor_view');
	}
	public function editor_add(){
		$info['Id'] ='';
		$info['user'] = $this->input->post('username');
		$info['pwd'] = md5($this->input->post('password'),FALSE );
		$info['create_time'] = time();
		$this->editor_model->user_add($info);
	}
	public function artical_add(){
		$arr['Id']='';
		$arr['uid']=1;
		$arr['title']=$this->input->post('title');
		$arr['content']=$this->input->post('content');
		$arr['create_time']=time();
		$this->editor_model->artical_add($arr);
		echo 'insert ok';
	}
	
	//other function
}