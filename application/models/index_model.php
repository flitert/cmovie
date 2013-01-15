<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
 * 首页相关的数据库操作
 * 
 * 
 */
class  Index_model extends CI_Model{
	public function __construct(){
		parent::__construct();
		$this->load->database();
	}
	//获得所有类型
	public function gettype(){
		$this->db->select('*');
		$query=$this->db->get('type');
		return $query->result_array();
	}
	//返回所有分类的N条数据
	public function getcag($slug,$num){
		$this->db->select('Id,Thumb,movie_name,type');
		$this->db->where('type',$slug);
		$query=$this->db->get('movie',$num,0);
		return $query->result_array();
	}
	//获得 某个分类或所有 最新的数据
	public function getnew($type,$num){
		$this->db->select('Id,movie_name,create_time');
		if ($type !== 0){
			$this->db->where('type',$type);
		}
		$this->db->order_by('create_time','desc');
		$query=$this->db->get('movie',$num,0);
		return $query->result_array();
	}
}