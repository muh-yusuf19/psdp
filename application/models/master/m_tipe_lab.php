<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_tipe_lab extends CI_Model {

    //select->read
	public function getData($value='')
	{
		$this->db->from('master_tipe_lab');
		return $this->db->get();
	}
    public function insertData($data='')
	{
		
        $this->db->insert('master_tipe_lab',$data);
       
	}
}