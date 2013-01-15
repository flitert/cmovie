<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
 * 
 * 
 * 
 */
class Movie_model extends CI_Model{

	public function __construct(){
		$this->load->database();
	}
	/*public function get($slug = FALSE){
		$this->db->select('*');
		$this->db->where('movie.Id',$slug);
		$this->db->from('movie');
		$this->db->join('down','movie.uuid = down.uuid','Left');
		$query= $this->db->get();
		return $query -> result_array();	
	}*/
	public function get($slug){
		$this->db->select('*');	
		$this->db->where('movie.Id',$slug);	
		$query=$this->db->get('movie');
		$detail=$query->row_array();
		
		$uuid=$detail['uuid'];
		$this->db->select('type,url');
		$this->db->from('down');
		$this->db->where('down.uuid',$uuid);	
		$query = $this->db->get();
		$down=$query->result_array();
		
		$arrs['detail']=$detail;
		$arrs['down']=$down;
		
		return $arrs;
	}
//other function	

}