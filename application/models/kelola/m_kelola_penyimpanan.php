<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_kelola_penyimpanan extends CI_Model {

    //select->read
	public function getData($value='')
	{
		$this->db->from('kelola_penyimpanan mb');
		$this->db->order_by('mb.id', 'desc');
		return $this->db->get();
	}

    //insert->create
	public function insertData($data='')
	{
		
        $this->db->insert('kelola_penyimpanan',$data);
       
	}
    //update
	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('kelola_penyimpanan',$data);
	}
    //delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('kelola_penyimpanan');
	}
	public function join()
	{
		$this->db->from('kelola_penyimpanan');
		$this->db->join('status','status.id = status');
		return $this->db->get();
	}

}
