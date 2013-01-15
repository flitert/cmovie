<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
 *	function :
 *	Parameter:
 *	return:
 *	
 *
 * 
 * 
 */
class Editor_model extends CI_Model{
	public function __construct(){
		parent::__construct();
		$this->load->database();
	}
	public function get(){
		$this->db->select('*');
		$query=$this->db->get('back_editor');
		return $query->result_array();
	}
	public function user_add($info){
		$this->db->insert('back_editor',$info);
	}
	public function artical_add($artical){
		$this->db->insert('back_list',$artical);
	}
	//other function
}