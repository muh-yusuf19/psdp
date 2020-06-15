<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_cek_status_peminjaman extends CI_Model {

    //select->read
	public function getData($value='')
	{
		$this->db->from('cek_status_peminjaman mb');
		$this->db->order_by('mb.id', 'desc');
		return $this->db->get();
	}

    //insert->create
	public function insertData($data='')
	{
		
        $this->db->insert('cek_status_peminjaman',$data);
       
	}
    //update
	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
			$this->db->update('cek_status_peminjaman',$data);
			//$this->db->join('jenis_kelamin jk', 'cu.jenis_kelamin = jk.id', 'left');
		//$this->db->select('cu.*,jk.jenis_kelamin');
	}
    //delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('cek_status_peminjaman');
	}

	public function join()
	{
		$this->db->from('cek_status_peminjaman');
		$this->db->join('kategori_peminjaman','kategori_peminjaman.id = kategori_peminjaman');
		return $this->db->get();
	}

}
