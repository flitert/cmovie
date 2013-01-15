<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
 * 分页类model
 * 
 * 
 */
class Type_model extends CI_Model{

	public function __construct(){
		$this->load->database();
	}

	public function count($table = FALSE,$type,$year,$area){
		if (!$type==0){$this->db->where('type',$type);}
		if (!$year==0){$this->db->where('release_date',$year);}
		if (!$area==0){$this->db->where('area',$area);}
		return	$this->db->count_all_results($table);
	}	
	public function get($table = FALSE,$type,$year,$area,$per_page = 5,$cur_page = 1){
		
		$cur_point = ($cur_page -1)*$per_page;				//当前指针所在位置
		
		$this->db->select('Id,movie_name,Thumb,director,type,area,language,release_date');
		if (!$type==0){$this->db->where('type',$type);}
		if (!$year==0){$this->db->where('release_date',$year);}
		if (!$area==0){$this->db->where('area',$area);}
		
		$this->db->order_by('create_time','desc');
		$query= $this->db->get($table,$per_page,$cur_point);
		return $query->result_array();
	}
	//获得所有分类
	public function gettype(){
		$this->db->select('*');
		$query=$this->db->get('type');
		return $query->result_array();
	}
	public function getyear(){
		$this->db->select('release_date');
		$this->db->distinct();
		$query=$this->db->get('movie');
		return $query->result_array();
	}
	public function getarea(){
		$this->db->select('*');
		$query=$this->db->get('area');
		return $query->result_array();
	}
	//other function
}