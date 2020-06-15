<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_kategori_alat_dan_bahan extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('kategori ma');
		$this->db->order_by('ma.id', 'desc');
		return $this->db->get();
	}

	public function insertData($data='')
	{
		
        $this->db->insert('kategori',$data);
       
	}

	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('kategori',$data);
	}

	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('kategori');
	}

}