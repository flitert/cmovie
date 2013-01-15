<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
 * 排行数据处理
 * 处理步骤 1.打开movie单页 记录 写入 id和create_time 2.获得最近N天的数据,过期数据不读取,保证(月)排行
 * 
 * count 返回格式Array([0] => Array([count] => 6[mid] => 8))
 * 
 * 
 * 
 * 
 */
class  Ranking_model extends CI_Model{
	public function __construct(){
		parent::__construct();
		$this->load->database();
	}
	//写入数据
	public function insert($mid,$type){
		$ranking = array(
			'Id'=>'',
			'mid'=>$mid,
			'type'=>$type,
			'create_time'=>time()
		);
		$this->db->insert('ranking',$ranking);
	}
	//返回最热的电影mid
	public function count($type,$day,$num){
			$ranking= $this->db->dbprefix('ranking');	//获得表前缀
			$movie= $this->db->dbprefix('movie');	//获得表前缀
			$time=time()-3600*$day;
			if ($type == 0 ){
				$type='';
			}else{
				$type=$ranking.'.type = '.$type.' AND ';
			}
			
			$sql="SELECT   COUNT($ranking.mid) AS count , $ranking.mid ,$movie.movie_name 
				FROM $ranking ,$movie
				WHERE ".$type."$ranking.create_time >$time AND $movie.id = vq_ranking.mid
				GROUP BY $ranking.mid 
				ORDER BY count DESC 
				LIMIT $num";
			$query=$this->db->query($sql);
			return $query->result_array();
	}
	//other function
}