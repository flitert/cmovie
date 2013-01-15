<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
 * 
 * 
 * 
 */
class Samply_model extends CI_Model{
	public function __construct(){
		$this->load->database();
	}
	public function add($table,$value = FALSE){
		if ($value == FALSE){
			return( 'insert error')	;
		}
		$data = array(
               'Id' => '' ,
               $table => $value
            );
		$this->db->insert($table,$data); 
		return ('insert ok');
	}
	public function get($table){
		$query = $this->db->get($table);
		return $query->result_array();
	}
	
	/***movie add start*****/
	public function movie_add($detail,$down){
		if (!empty($detail)){
			$this->db->insert('movie',$detail);	
		}
		if(!empty($down)){
			$this->db->insert_batch('down',$down);
		}
	}
	
	/***movie add end*****/
	
	/****nav editor***/
	public function nav_add($nav){
		$this->db->insert('nav',$nav);
	}
	
	
	//other function 
}